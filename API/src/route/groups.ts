import express = require("express");
import { AppDataSource } from "../database/datasource";
import { countries } from "../database/entity/coutries";
import { groupes } from "../database/entity/groupes";

const groupsRouter = express.Router();

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min) + min); // The maximum is exclusive and the minimum is inclusive
  }


groupsRouter.get('/create-groups', async (req, res) => {
    try  {
        let countriesList = await AppDataSource.getRepository(countries).find();

        let groupsList = await AppDataSource.getRepository(groupes).find()
        let hat = [1,2,3,4];


        let groupsCountriesList = groupsList.map((group)=> {
            let groupCountries = [];
            hat.forEach(async (h)=>{
                let countriesOfHatH = countriesList.filter((c)=> c.hat === h)
                let choosenCountrie = countriesOfHatH[getRandomInt(0, countriesOfHatH.length-1)];
                choosenCountrie.group = group
                countriesList = countriesList.filter((c)=> c.id !== choosenCountrie.id)
                groupCountries.push(choosenCountrie)
                await AppDataSource.getRepository(countries).save(choosenCountrie);
            })
            return {
                group: group,
                groupCountries
            }
        })

        return res.send(groupsCountriesList)

    } catch (e) {
        res.sendStatus(500)
    }
});

export { groupsRouter }