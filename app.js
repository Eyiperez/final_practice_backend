const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors');


const app = express();

app.use(cors());

app.use(bodyParser.urlencoded({ extended: false}))

app.use(bodyParser.json())

const homeRouter = require('./routes/home');
const moviesRouter = require('./routes/movies');
const genresRouter = require('./routes/genres');
const ratingsRouter = require('./routes/ratings');

app.use('/', homeRouter);
app.use('/movies', moviesRouter);
app.use('/genres', genresRouter);
app.use('/ratings', ratingsRouter);




module.exports = {
    app,
};
