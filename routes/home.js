const express = require('express');
const homeRouter = express.Router();


homeRouter.get('', (req, res) => {
    res.send(`<h1> Movie app </h1> </br> `)
});


module.exports = homeRouter;