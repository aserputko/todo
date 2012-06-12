class RubyGarage.Collections.TodoLists extends Backbone.Collection

  model: RubyGarage.Models.TodoList

  url: '/api/new_way'

  parse: (resp) ->
  	resp.map((todoList) ->
  		return {
    		project : new RubyGarage.Models.Project(todoList.project),
    		tasks: new RubyGarage.Collections.Tasks(todoList.tasks)
  		})

