Gateway = require('../gateways/Gateway')
Image = require('../models/Image')

class ImageService
  getImage: (query, callback) ->
    @callback = callback
    Gateway.getImage query, @processResponse

  processResponse: (response) =>
    photos = response.photos.photo.map (photo) -> new Image(photo)
    @callback photos.filter (photo) -> photo.isValid()

module.exports = new ImageService()
