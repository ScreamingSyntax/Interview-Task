const route = require('express').Router();
const {getName} = require('./user.controller');

route.get("/",getName)

module.exports = route;