express = require('express')
ImageController = require('../scripts/controllers/ImageController')
router = express.Router()

### GET home page. ###

router.get '/', (req, res, next) ->
  res.render 'index', {title: "Hello"}

router.get '/image', ImageController.index

module.exports = router
