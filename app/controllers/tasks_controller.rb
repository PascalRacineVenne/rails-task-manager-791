class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    raise
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end
  
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update
    redirect_to task_path(@task)
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
