class RubyGarage.Views.Project extends Backbone.View

  template: JST['ruby_garages/project']

  initialize: () ->
  	@model.on('change', @render, this)
  	@collection = new RubyGarage.Collections.Tasks()
  	@collection.fetch()
  	console.log(@collection)
  	@collection.on('change', console.log, this)

  render: ->
  	$(@el).html(@template(project : @model.toJSON()))
  	this

  events:
  	'click .icon-pencil' : 'edit',
  	'click .icon-trash'  : 'destroy',
  	'click .icon-ok'     : 'save',
  	'click button'       : 'addTask'

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

