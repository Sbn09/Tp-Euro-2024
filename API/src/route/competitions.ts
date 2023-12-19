import express = require("express");
import { AppDataSource } from "../database/datasource";
import { competitions } from "../database/entity/competitions";

const competitionsRouter = express.Router();

competitionsRouter.get('/', async (req, res) => {
    try  {
        res.send(await AppDataSource.getRepository(competitions).find())
    } catch (e) {
        res.sendStatus(500)
        console.log(e)
    }
});

competitionsRouter.get('/create/:nom', async (req, res) => {
    try  {
        let competion = new competitions()
        competion.name = req.params.nom;
        return res.send(await AppDataSource.getRepository(competitions).save(competion))
    } catch (e) {
        res.sendStatus(500)
        console.log(e)
    }
});

export { competitionsRouter }