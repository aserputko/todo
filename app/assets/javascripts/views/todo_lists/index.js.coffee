class RubyGarage.Views.RubyGaragesIndex extends Backbone.View
  tagName: 'div'

  template: JST['todo_lists/index']

  initialize:  ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(todoLists : @collection.models))
    this    
