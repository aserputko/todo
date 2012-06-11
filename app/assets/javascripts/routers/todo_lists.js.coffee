class RubyGarage.Routers.TodoLists extends Backbone.Router
	
	initialize: (container) ->
    @projects = new RubyGarage.Collections.Projects()
    @tasks = new RubyGarage.Collections.Tasks()
    @projects.fetch()
    @tasks.fetch()

    view = new RubyGarage.Views.RubyGaragesIndex({projects : @projects, tasks : @tasks})

    container.html(view.render().el)