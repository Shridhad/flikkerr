request = require('request')
FlickrAPI = require('flickrapi')
keys = require('../../../config/flicker')

class Gateway
  constructor: () ->
    FlickrAPI.tokenOnly {
      api_key: keys.api_key,
      format: 'json'
    }, (error, flickr) =>
      @flickr = flickr

  getImage: (query, callback) ->
    @flickr.photos.search {
      text: query,
      extras: 'url_q'
    }, (error, response) ->
      callback response


module.exports = new Gateway()
