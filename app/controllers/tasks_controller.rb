class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create #POST /restaurant
  raise
  @task = Task.new(params_task)

  if @task.save
  redirect_to task_path(@task)
  else
  render :new, status:  :unprocessable_entity
  end

  def edit
  @task = Task.find(params[:id])
  end

  private

  def params_task
  params.require(:task).permit()
  end

end
end
