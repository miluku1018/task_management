class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :show, :destroy]
  def index
   @tasks = Task.order(created_at: :desc)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path, notice: t('.create_info')
    else
      reneder :new
    end
  end

  def edit
  end
 
  def update
    if @task.update(task_params)
      redirect_to root_path, notice: t('.update_info')
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to root_path, notice: t('.delete_info')
  end

  private
  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :priority, :start_at, :end_at)
  end
end
