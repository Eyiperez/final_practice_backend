const { db } = require('./pgp');
const GenresService = {};


//ADD GENRE
GenresService.create = (name) => {
    const sql = `INSERT INTO genres (name) VALUES ($[name]) RETURNING id`;
    return db.one(sql, { name });
}

//GET ALL MOVIES
GenresService.getAll = (name) => {
    console.log(name)
    const sql = `SELECT movies.*, genres.name AS genre FROM movies LEFT JOIN genres ON genres.id = genre_id WHERE genres.name = $[name]`;
    return db.any(sql, { name });
}



module.exports = GenresService;