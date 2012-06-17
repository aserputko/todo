class RubyGarage.Views.Task extends Backbone.View

  template: JST['ruby_garages/task']

  initialize: () ->
    @model.on('change', @render, this)

  render: ->
  	$(@el).html(@template(task : @model.toJSON()))
  	this

  