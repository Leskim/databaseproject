// jshint esversion:6

const express = require("express");
const bodyParser = require("body-parser");
var db = require('./database');

const app = express();

app.set('view engine', 'ejs');

app.use(express.static("public"));
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(express.static('public'));

app.get("/", function(req, res) {
  res.render("home");
});


app.get("/donor", function(req, res) {
  res.render("donor");
});

app.post("/donor", function(req, res) {
  var f_name = req.body.f_name;
  var l_name = req.body.l_name;
  var blood_type = req.body.blood_type;
  var address = req.body.address;
  var email = req.body.email;
  var phone = req.body.phone;
  var age = req.body.age;


var sql = `INSERT INTO donor (firstName, lastName , bloodType, address, email, phone, age) VALUES ("${f_name}", "${l_name}", "${blood_type}", "${address}", "${email}", "${phone}", "${age}")`;
db.query(sql, function(err, result){
  if(err) throw err;
  console.log('Donor added !!');
  res.redirect('/');
});
});


app.get("/recepient", function(req, res) {
  res.render("recepient");
});

app.post("/recepient", function(req, res) {
  var f_name = req.body.f_name;
  var l_name = req.body.l_name;
  var blood_type = req.body.blood_type;
  var address = req.body.address;
  var email = req.body.email;
  var phone = req.body.phone;
  var age = req.body.age;
  var recepient = f_name + " " + l_name;


var sql = `INSERT INTO recepient (firstName, lastName , bloodType, address, email, phone, age) VALUES ("${f_name}", "${l_name}", "${blood_type}", "${address}", "${email}", "${phone}", "${age}")`;
db.query(sql, function(err, result){
  if(err) throw err;
  console.log('Recepient added !!');
});

// SQL codes to select donors for a certain recepient
// SELECT donor.* FROM donor, recepient WHERE recepient.bloodType = donor.bloodType AND recepient.firstName = 'Kasper';

var sql = `SELECT DISTINCT donor.* FROM donor, recepient WHERE recepient.bloodType = donor.bloodType AND recepient.firstName = "${f_name}" OR donor.bloodType = "O-"`;

db.query(sql, function(err, data, fields){
  if(err) throw err;
  
  console.log('Donors Found added !!');

console.table(data);

app.get("/donorsavailable", function(req, res) {
  res.render("donorsavailable", { recepient: recepient, donorData: data});
});

res.redirect('/donorsavailable');

  
});


console.log(recepient);

});




app.listen(process.env.PORT || 3000, function() {
  console.log("Server is running on port 3000");
});


module.exports = app;
