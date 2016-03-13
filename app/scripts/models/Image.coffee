class Image
  constructor: (json) ->
    @url = json.url_o
    @id = json.id
    @title = json.title

  isValid: () ->
    !!(@url && @id)

module.exports = Image
