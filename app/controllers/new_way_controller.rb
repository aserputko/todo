class NewWayController < ApplicationController
	respond_to :json, :xml

  def index
  	@projects = Project.all
    respond_with @projects.map { |project| project.tasks }
  end

  def show
  	@project = Project.find(params[:id])
  	respond_with @project.tasks
  end	

  # TODO: need change POST, PUT and DELETE
  def create
    respond_with Project.create(params[:name])
  end

  def update
    respond_with Project.update(params[:id], params[:name])
  end

  def destroy
    respond_with Project.destroy(params[:id])
  end
end
