class RubyGarage.Views.Task extends Backbone.View
  tagName : 'tr'

  template: JST['ruby_garages/task']

  initialize: () ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(task : @model.toJSON()))
    this

  events: 
    'click .status'                   : 'changeStatus',
    'click .tasks .icon-trash'        : 'destroy',
    'click .tasks .icon-pencil'       : 'edit',
    'click .tasks .icon-ok'           : 'save',
    'click .tasks .icon-chevron-up'   : 'notImplementedYet',
    'click .tasks .icon-chevron-down' : 'notImplementedYet'

  changeStatus: ->
    @model.changeStatus(); 
    @model.save()

  destroy: ->
    @model.destroy()
    @model.clear()

  edit: ->
    @model.set({edit : true})

  save: ->
    name = @$('.task_input').val()
    @model.set({name : name, edit : false})
    @model.save()

  notImplementedYet: ->
    alert "This functionality is not implemented yet! :("

  