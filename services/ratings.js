const { db } = require('./pgp');
const RatingsService = {};


//ADD RATING
RatingsService.create = (stars) => {
    const sql = `INSERT INTO ratings (stars) VALUES ($[stars]) RETURNING id`;
    return db.one(sql, { stars });
}

//GET ALL MOVIES
RatingsService.getMoviesWithStars = (stars) => {
    console.log(stars)
    const sql = `SELECT movies.*, ratings.stars FROM movies LEFT JOIN ratings ON movies.id = movie_id WHERE ratings.stars = $[stars]`;
    return db.any(sql, { stars });
}



module.exports = RatingsService;