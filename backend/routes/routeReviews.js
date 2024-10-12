"use strict"

const reviewsDB = require('../Models/reviewsDB');

var reviewsDBObject = new reviewsDB();

function routeReviews(app){
    app.route('/reviews')
        .get(reviewsDBObject.getAllReview)
        .post(reviewsDBObject.addReview);

    app.route('/reviews/:id')
        .delete(reviewsDBObject.deleteReview)
        .put(reviewsDBObject.updateReview);
    
    app.route('/product_id/:review_product_id')
        .get(reviewsDBObject.getReviewByProduct);

    /* app.route('/brand_id/:review_brand_id')
        .get(reviewsDBObject.getReviewByBrand);*/
}

module.exports = {routeReviews};