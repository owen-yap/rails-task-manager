class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to index_path
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to index_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
