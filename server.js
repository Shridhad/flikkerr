var express = require('express');

var app = express();

app.get('/', function(req, res) {
  res.send('Node Js with express');
});

app.listen(3000, function () {
  console.log('Server started: http://localhost:3000');
});
