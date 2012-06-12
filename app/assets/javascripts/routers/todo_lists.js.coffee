class RubyGarage.Routers.TodoLists extends Backbone.Router
	
	initialize: (container) ->
    @collection = new RubyGarage.Collections.TodoLists()
    @collection.fetch()
    
    view = new RubyGarage.Views.RubyGaragesIndex(collection : @collection)
    container.html(view.render().el)