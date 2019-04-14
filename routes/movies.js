const express = require('express');
const moviesRouter = express.Router();
const MoviesService = require('../services/movies');



// POST - ADD MOVIE
moviesRouter.post('/', (req, res, next) => {
    const { title, genre_id, img_url } = req.body;
    MoviesService.create(title, genre_id, img_url)
        .then(data => {
            res.status(200)
            res.json({ success: `Added movie titled ${title} with generated ID: ${data.id}`, id: data.id });
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })

        })
});

//GET- ALL MOVIES
moviesRouter.get('/all', (req, res, next) => {
    MoviesService.getAll()
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})

//GET MOVIE INFO
moviesRouter.get('/:id', (req, res, next) => {
    const id = req.params.id;
    MoviesService.read(id)
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})

//GET ALL COMMENTS OF A MOVIE
moviesRouter.get('/:id/comments', (req, res, next) => {
    const id = req.params.id;
    MoviesService.getAllComments(id)
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})

//GET ALL RAITINGS OF A MOVIE
moviesRouter.get('/:id/ratings', (req, res, next) => {
    const id = req.params.id;
    MoviesService.getAllRatings(id)
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})


module.exports = moviesRouter;