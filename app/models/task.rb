class Task < ActiveRecord::Base
  attr_accessible :name, :project_id, :status

  belongs_to :project
end
