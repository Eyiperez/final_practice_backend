const express = require('express');
const ratingsRouter = express.Router();
const RatingsService = require('../services/ratings');



// POST - ADD RATING
ratingsRouter.post('/', (req, res, next) => {
    const { stars, movie_id } = req.body;
    RatingsService.create(stars)
        .then(() => {
            res.status(200)
            res.json({ success: `Added ${title} stars to movie ID ${movie_id}` });
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
});

//GET - ALL MOVIES WITH SPECIFIC NUMBER OF STARS
ratingsRouter.get('/:stars', (req, res, next) => {
    const { stars } = req.params;
    RatingsService.getMoviesWithStars(stars)
        .then(data => {
            res.status(200)
            res.json(data);
        })
        .catch(err => {
            res.status(400)
            res.send({ success: false })
        })
})



module.exports = ratingsRouter;