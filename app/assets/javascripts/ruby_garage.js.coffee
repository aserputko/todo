window.RubyGarage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
  	new RubyGarage.Routers.RubyGarages()

$(document).ready ->
  RubyGarage.init()
