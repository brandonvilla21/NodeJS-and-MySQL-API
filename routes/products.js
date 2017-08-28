var express = require('express');
var router = express.Router();
var Products = require("../models/products");
const multer = require("multer");

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "products/");
    },
    filename: (req, file, cb) => {
        cb(null, file.originalname);
    }
});

const upload = multer({storage});

router
    .get('/', (req, res, next) => {
        Products.all((error, data) => {
            return Products.response(res, error, data);
        })
    })

    .get('/:id', (req, res, next) => {
        Products.findById(req.params.id, (error, data) => {
            return Products.response(res, error, data);
        })
    })

    .post('/', upload.single('file'), (req, res, next) => {
        const product = {
            id: null,
            name: req.body.name,
            price: req.body.price,
            picture: req.file.filename,
            description: req.body.description
        };

        Products.insert(product, (error, data) => {
            return Products.response(res, error, data);
        })
    })

    .put('/:id', (req, res, next) => {
        const product = {
            id: req.params.id,
            name: req.body.name,
            price: req.body.price,
            description: req.body.description
        };

        Products.update(product, (error, data) => {
            return Products.response(res, error, data);
        })
    })

    .delete('/:id', (req, res, next) => {
        Products.remove(req.params.id, (error, data) => {
            return Products.response(res, error, data);
        })
    });

module.exports = router;
