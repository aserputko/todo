class RubyGarage.Routers.RubyGarages extends Backbone.Router

	initialize: ->
    @projects = new RubyGarage.Collections.Projects()
    @projects.fetch()
    
    view = new RubyGarage.Views.Index(collection : @projects)
    $('#ruby_garage').html(view.render().el)
