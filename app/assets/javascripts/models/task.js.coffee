class RubyGarage.Models.Task extends Backbone.Model
	
	defaults: 
		name: null,
		status: false,
		project_id: null

	changeStatus: ->
		@.set({status : !@.get('status')})

	getName: ->
		@.get('name')

	getStatus: ->
		@.get('status')