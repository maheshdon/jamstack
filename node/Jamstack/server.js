//express package connection
var express = require('express')
var cors = require('cors')
var app = express()
//bodyparser package connection
var bodyParser = require('body-parser');
app.use(cors())

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())


//mySQL connection
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "jamstack"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
 
});

//Users API creation
app.get('/products', function (req, res) {
  // res.send('Hello World');
  // console.log(req.body.name);
  var sql = "SELECt * FROM products";
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.send(result)
  })
})

app.post('/viewproduct', function (req, res) {
  var userId = req.body.id;
      var sql = "SELECT * FROM products where id='"+userId+"'";
      con.query(sql, function (err, result) {
      if (err) throw err;
      res.send(result)
  });
  //console.log(req.body.id);
})





app.listen(3000)
console.log('running on port 3000');


