class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    # @task = Task.new
    # raise
  end

  def show
    @task = Task.find(params[:id])
  end
  
  def create
    # @task = Task.new
    # @task.save
  end
  
  def edit
    # @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
