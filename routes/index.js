var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  var request = require('request');
  request('http://www.facebook.com', function (error, response, body) {
    if (!error && response.statusCode == 200) {
      console.log(body) // Print the google web page.
      res.send(body);
    } else {
      res.send("Error");
    }
  })

});

module.exports = router;
