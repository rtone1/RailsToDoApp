class TasksController < ApplicationController

  def index
    tasks = Task.all
    task = tasks.where(completed: false)
    @tasks = task.order(:created_at).reverse

    tasksdone = Task.all
    @taskD = tasksdone.where(completed: true)
  end

  def indexdone
    tasks1 = Task.all
    task2 = tasks1.where(completed: true)
    @tasksdone = task2.order(:updated_at).reverse
  end

  def takscreateapi
    task = Task.create!( task_params )
    redirect_to '/'
  end

  def edit
    task = task.find(params[:id])
  end
  def update
    taskup = Task.find(params[:id])
    taskup.update!({completed: true})
    redirect_to '/'
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to '/'
  end

  private

  def task_params
    params.require(:task).permit(:note, :completed)
  end

end
