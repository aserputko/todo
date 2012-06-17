class RubyGarage.Views.Index extends Backbone.View
  tagName : 'div'
  className : 'row'

  index_template: JST['ruby_garages/index']
  new_project_template: JST['ruby_garages/new_project']

  initialize: () ->
    @collection.on('reset', @initializeTasks, this)
    @collection.on('change', @render, this)

  initializeTasks: ->
    @tasks = new RubyGarage.Collections.Tasks()
    @tasks.fetch()
    @tasks.on('reset', @render, this)

  render: ->
  	$(@el).html(@index_template())
  	@collection.each(@appendProgect, this)
  	this

  appendProgect: (project) ->
    view = new RubyGarage.Views.Project({model : project, collection : @tasks})
    $('#todo_lists').append(view.render().el)

  events: ->
  	'click #add_todo_list' : 'clickOnAddTodoListButton',
  	'click #add_project'   : 'createProgect'

  clickOnAddTodoListButton: ->
  	$('#new_project').html(@new_project_template({}))

  createProgect: ->
  	@collection.create(name : $('#new_project input').val())
