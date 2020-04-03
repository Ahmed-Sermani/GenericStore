const express = require("express");
const router = express.Router();

function routes(app) {

    app.get('/api', (req, res) => {
        res.json({ Name: 'ahmad sermani' })
    })


    return router;
};

module.exports = routes;