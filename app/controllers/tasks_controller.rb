class TasksController < ApplicationController
  before_filter :find_project
  before_filter :authenticate_user!, :except => [:show]
  def create
    @tasks = @project.tasks.new(params[:task])
    @tasks.user_id = params[:task_user_id]
    @tasks.save

    redirect_to project_path(@project)

  end

  private
  def find_project
    @project = Project.find(params[:project_id])
  end
end
