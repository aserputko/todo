window.RubyGarage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
  	new RubyGarage.Routers.TodoLists($('#todo_lists'))

$(document).ready ->
  RubyGarage.init()
