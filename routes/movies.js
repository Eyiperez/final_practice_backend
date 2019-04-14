const express = require('express');
const moviesRouter = express.Router();


moviesRouter.get('', (req, res) => {
    res.send(`<h1> Movie app </h1> </br> `)
});


module.exports = moviesRouter;