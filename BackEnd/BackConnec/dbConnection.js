const mysql = require("mysql2");



const db_connection = mysql
    .createConnection({
        host: 'localhost',
        user : 'user',
        password  : 'Mot2passe',
        database : 'jwt'
    })
    .on("error", (err) => {
        console.log("Failed to connect to Database - ", err);
    });




module.exports = db_connection;
