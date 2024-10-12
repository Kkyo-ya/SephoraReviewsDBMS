"use strict"

const userDB = require('../Models/userDB');

var userDBObject = new userDB();

function routeUser(app){
    app.route('/user')
        .get(userDBObject.getAllUsers)
        .post(userDBObject.addUser);

    app.route('/user/:id')
        .delete(userDBObject.deleteUser)
        .put(userDBObject.updateUser)
        .get(userDBObject.getUserById);

    app.route('/login')
        .post(userDBObject.getLoginCredentials);
}

module.exports = {routeUser};