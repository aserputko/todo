class RubyGarage.Views.Project extends Backbone.View

  template: JST['ruby_garages/project']

  initialize: () ->
  	@model.on('change', @render, this)
  	@collection.on('change', @render, this)

  render: ->
  	@tasks = @collection.select(((task) -> task.get('project_id') == @model.id), @)
  	$(@el).html(@template(project : @model.toJSON()))
  	_.each(@tasks, @appendTasks, this)
  	this

  events:
  	'click .icon-pencil' : 'edit',
  	'click .icon-trash'  : 'destroy',
  	'click .icon-ok'     : 'save',
  	'click button'       : 'addTask'

  appendTasks: (task) ->
  	view = new RubyGarage.Views.Task(model : task)
  	@$('.tasks').append(view.render().el)

  edit: ->
  	@model.set({edit : true})

  destroy: ->    
    @model.destroy()
    @model.clear()

  save: ->
  	name = @$('.projects_input').val()
  	@model.set({name : name, edit : false})
  	@model.save()

  addTask: ->
  	name = @$('input').val()
  	@collection.create({name : name, status: false, project_id : @model.id})

