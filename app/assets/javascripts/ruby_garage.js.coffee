window.RubyGarage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
  	new RubyGarage.Routers.TodoLists($('#container'))

$(document).ready ->
  RubyGarage.init()
