var mysql = require('mysql');

var con = mysql.createConnection({
  host: "us-cdbr-east-05.cleardb.net",
  user: "b026b45396e50d",
  password: "441092c9",
  database: "heroku_c6f3c3d85f822cc"
});


con.connect(function(err) {
      if (err) throw err;
      console.log("Connected!");
});
module.exports = con;


// host: "localhost",
//   user: "root",
//   password: "",
//   database: "bloodbank_normalized3nf"