'use strict';

var express = require('express');
var controller = require('./upload.controller');
var multer = require('multer');

var router = express.Router();

router.get('/', controller.index);
router.get('/:id', controller.show);
router.post('/', controller.create);
router.post('/profile', controller.saveProfile);
router.put('/:id', controller.update);
router.patch('/:id', controller.update);
router.delete('/:id', controller.destroy);

module.exports = router;
