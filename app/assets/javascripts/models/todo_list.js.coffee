class RubyGarage.Models.TodoList extends Backbone.Model
	
	getProjectName: ->
		@.get('project').get('name')

	getTasks: ->
		@.get('tasks').models