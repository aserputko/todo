class RubyGarage.Collections.Tasks extends Backbone.Collection

  model: RubyGarage.Models.Task

  url: 'api/tasks/'

 	up: (model, index) ->
 		if (@.model.id == model.id)
 			if index > 0
 				current_model = @.collection.models[index].toJSON()
 				prev_model = @.collection.models[index - 1]
 				@.collection.models[index].set({name : prev_model.getName(), status : prev_model.getStatus()}).save()
 				@.collection.models[index - 1].set({name : current_model.name, status : current_model.status}).save()

 	down: (model, index) ->
 		if (@.model.id == model.id)
 			if index < @.collection.size() - 1
 				current_model = @.collection.models[index].toJSON()
 				prev_model = @.collection.models[index + 1]
 				@.collection.models[index].set({name : prev_model.getName(), status : prev_model.getStatus()}).save()
 				@.collection.models[index + 1].set({name : current_model.name, status : current_model.status}).save()



