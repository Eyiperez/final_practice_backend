const { db } = require('./pgp');
const MoviesService = {};


//CREAT BUYER
MoviesService.create = (title, genre_id, img_url) => {
    const sql = `INSERT INTO movies (title, genre_id, img_url) VALUES ($[title], $[genre_id], $[img_url]) RETURNING id;`;
    return db.one(sql, { title, genre_id, img_url });
}

//GET ALL MOVIES
MoviesService.getAll = () => {
    const sql = `SELECT * FROM movies`;
    return db.any(sql);
}

//GET MOVIE INFO
MoviesService.read = (id) => {
    const sql = `SELECT movies.* FROM movies WHERE movies.id = $[id]`;
    return db.any(sql, { id });
}

//GET ALL COMMENTS OF A MOVIE
MoviesService.getAllComments = (id) => {
    const sql = `SELECT comments.text AS comment, comments.id FROM comments LEFT JOIN movies ON movies.id = movie_id WHERE movies.id = $[id]`;
    return db.any(sql, { id });
}

//GET ALL RAITINGS OF A MOVIE
MoviesService.getAllRatings = (id) => {
    const sql = `SELECT ratings.stars FROM ratings WHERE movie_id = $[id]`;
    return db.any(sql, { id });
}

module.exports = MoviesService;