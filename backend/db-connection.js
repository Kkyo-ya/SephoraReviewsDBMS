var mariadb = require('mariadb'); 

var connection = mariadb.createPool({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: 'P@ssword!',
    database: 'sephoradb',
    connectionLimit: 10
});

// Test the connection when the server starts
connection.getConnection()
    .then(conn => {
        console.log("Database connection established successfully");
        conn.release(); // Release the connection back to the pool
    })
    .catch(err => {
        console.log("Error connecting to the database:", err);
    });

module.exports = connection;