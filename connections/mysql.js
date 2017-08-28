const mysql = require('mysql');
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    port: 8889,
    database: 'angular2-nodejs-course'
});

module.exports = conn;
