class RubyGarage.Models.Task extends Backbone.Model
	
	getName: ->
		@.get('name')

	getStatus: ->
		@.get('status')
