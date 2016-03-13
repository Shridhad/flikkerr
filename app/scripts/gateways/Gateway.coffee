request = require('request')

class Gateway
  getImage: (query, callback) ->
    console.log callback
    request 'http://localhost:3000/flicker.json', (error, response, body) ->
      console.log error, response, body
      callback body


module.exports = new Gateway()
