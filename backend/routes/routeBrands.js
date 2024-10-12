"use strict"

const brandsDB = require('../Models/brandsDB');

var brandsDBObject = new brandsDB();

function routeBrands(app){
    app.route('/brands')
        .get(brandsDBObject.getBrand_name)
       
    
}

module.exports = {routeBrands};