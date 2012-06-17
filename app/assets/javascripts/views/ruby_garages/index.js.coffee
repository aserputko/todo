class RubyGarage.Views.Index extends Backbone.View

  index_template: JST['ruby_garages/index']
  new_project_template: JST['ruby_garages/new_project']

  initialize: () ->
  	@collection.on('reset', @render, this)
  	@collection.on('change', @render, this)

  render: ->
  	$(@el).html(@index_template())
  	@collection.each(@appendProgect)
  	this

  appendProgect: (project) ->
    view = new RubyGarage.Views.Project(model : project)
    $('#todo_lists').append(view.render().el)

  events: ->
  	'click #add_todo_list' : 'clickOnAddTodoListButton',
  	'click #add_project' : 'createProgect'

  clickOnAddTodoListButton: ->
  	$('#new_project').html(@new_project_template({}))

  createProgect: ->
  	@collection.create(name : $('#new_project input').val())
