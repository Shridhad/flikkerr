ImageService = require('../services/ImageService')

class ImageController
  index: (req, res) ->
    ImageService.getImage "sunrise", (images) ->
      res.render 'image/image', {images: images}
      # res.send images

module.exports = new ImageController()
