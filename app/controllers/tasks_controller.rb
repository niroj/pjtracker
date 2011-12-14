class TasksController < ApplicationController
  def new
     @p = Project.new
  end
end