const express = require('express');
const genresRouter = express.Router();
const GenresService = require('../services/genres');



// POST - ADD GENRE
genresRouter.post('/', (req, res, next) => {
    const { name } = req.body;
    GenresService.create(name)
        .then(data => {
            res.status(200)
            res.json({ success: `Added genre ${title} with generated ID: ${data.id}`, id: data.id });
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
});

//GET - ALL MOVIES WITH GENRE
genresRouter.get('/movies', (req, res, next) => {
    const { genre } = req.query;
    console.log(genre)
    GenresService.getAll(genre)
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})



module.exports = genresRouter;