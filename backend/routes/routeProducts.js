"use strict"

const productsDB = require('../Models/productsDB');

var productsDBObject = new productsDB();

function routeProducts(app){
    app.route('/products')
        .get(productsDBObject.getAllProducts)
        .post(productsDBObject.addProduct);

   /* app.route('/products/:id')
        .delete(productsDBObject.deleteProduct)
        .put(productsDBObject.updateProduct);*/

    app.route('/name/:product_name')
        .get(productsDBObject.getProductByName);

    app.route('/priCategory/:primary_category')
        .get(productsDBObject.getProductByPriCategory);

    app.route('/secCategory/:secondary_category')
        .get(productsDBObject.getProductBySecCategory);

  /*  app.route('/brand_id/:products_brand_id')
        .get(productsDBObject.getProductsByID);
        */
} //app.route('//:products_brand_id)

module.exports = {routeProducts};