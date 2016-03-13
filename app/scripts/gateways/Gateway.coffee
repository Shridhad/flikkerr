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
      extras: 'url_o'
    }, (error, response) ->
      callback response
    # request 'http://localhost:3000/flicker.json', (error, response, body) ->
    #   callback JSON.parse(body)

module.exports = new Gateway()
