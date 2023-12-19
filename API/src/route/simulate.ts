import * as express from 'express'
import { AppDataSource } from '../database/datasource';
import { groupes } from '../database/entity/groupes';
import { matches } from '../database/entity/matches';
import { competitions } from '../database/entity/competitions';


const simulateRouter = express.Router();


simulateRouter.get('/:compet/:level', async (req, res) => {
    let competition = await AppDataSource.getRepository(competitions).findOneByOrFail({name:req.params.compet})
    
    // Récupérer tous les groupes avec leurs pays respectifs
    let groups = await AppDataSource.getRepository(groupes).find({
        relations: {
            countriesList: true
        }
    });

    // level: number; // '16', '4', '2', '1'
    let level = [ 16 , 4 , 2 , 1 ]
    let selectedLevel = parseInt(req.params.level)
    let selectedLevelIndex = level.findIndex(l => l === selectedLevel);

    if(selectedLevelIndex === -1) {
        return res.status(422).send('Quelle niveau de la compétition voulez vous simuler')
    }
    
    if(level[selectedLevelIndex] !== 16) {
        let previousMatches = await AppDataSource.getRepository(matches).findOne({
            where: {
                level: level[selectedLevelIndex-1],
                competion: competition
            }, 
            relations: {
                awayTeam: true,
                homeTeam: true
            }
        })
        if(!previousMatches) {
            return res.status(422).send('Le précédent niveau de la compétition n\'as pas eut lieu')
        }
    }
    let actualMatches = await AppDataSource.getRepository(matches).findOne({
        where: {
            level: level[selectedLevelIndex],
            competion: competition
        }
    })


    if(actualMatches) {
        return res.status(422).send('Ce niveau de la compétitio a déjà été joué')
    }


    let matchs = []

    // Parcourir chaque groupe et simuler les matchs
    for (let group of groups) {
        let countries = group.countriesList;
        for (let i = 0; i < countries.length; i++) {
            for (let j = i + 1; j < countries.length; j++) {
                
                // Créer une nouvelle instance de match
                let match = new matches();
                match.homeTeam = countries[i];
                match.awayTeam = countries[j];

                // Simuler le match entre countries[i] et countries[j]
                match.homeTeamGoals = Math.floor(Math.random() * 5);
                match.awayTeamGoals = Math.floor(Math.random() * 5);

                if (match.homeTeamGoals > match.awayTeamGoals) {
                    match.result = 'win';
                } else if (match.homeTeamGoals < match.awayTeamGoals) {
                    match.result = 'loss';
                } else {
                    match.result = 'draw';
                }

                matchs.push(match)

                // Sauvegarder le résultat dans la base de données
                match.level = parseInt(req.params.level)
                match.competion = competition;
                await AppDataSource.getRepository(matches).save(match);
            }
        }
    }

    return res.send(matchs)

});

export { simulateRouter }
