Gateway = require('../gateways/Gateway')

class ImageService
  getImage: (query, callback) ->
    console.log callback
    Gateway.getImage query, callback


module.exports = new ImageService()
