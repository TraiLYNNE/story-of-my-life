class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @task = Task.new(page_id: params[:page_id])
  end

  def create
    @task = Task.new(task_params)

    if @task.valid?
      @task.save

      redirect_to page_path(@task.page), alert: "Task successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)

      redirect_to page_path(@task.page), alert: "Task successfully updated"
    else
      render :edit
    end
  end
  
  def destroy
    @task.destroy

    redirect_to page_path(@task.page), alert: "Task successfully deleted"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :page_id)
  end
end
