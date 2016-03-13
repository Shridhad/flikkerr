ImageService = require('../services/ImageService')

class ImageController
  index: (req, res) ->
    ImageService.getImage "filcker", (images) ->
      res.send images

module.exports = new ImageController()
