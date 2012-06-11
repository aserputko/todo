class RubyGarage.Views.RubyGaragesIndex extends Backbone.View

  template: JST['todo_lists/index']

  initialize: (options) ->
    @projects = options.projects
    @tasks 		= options.tasks

    @projects.on('reset', @render, this)
    @tasks.on('reset', @render, this)

  render: ->
    $(@el).html(@template())
    alert "test"
    this
