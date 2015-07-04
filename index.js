'use strict';

var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');
var app = express();

//app.set('port', (process.env.PORT || 5000));

// BASIC STATIC HTTP SERVER -------------------------------
// app.use(express.static(path.join(__dirname,'public')));
app.use(express.static(__dirname));

app.listen(5000, function () {
  console.log("Node app is running at http://localhost:" + 5000 + "/");
});
