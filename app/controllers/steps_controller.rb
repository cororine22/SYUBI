class StepsController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @step = Step.new
  end

  def index
    @task = Task.find(params[:task_id])
    @steps = @task.steps
  end

  def show
    @task = Task.find(params[:task_id])
    @steps = @task.steps
  end

  def create
    @task = Task.find(params[:task_id])

    @step = Step.new(
      title: steps_params[:title],
      detail: steps_params[:detail],
      task_id: params[:task_id],
      status: "未着手"
    )

    if @step.save
      redirect_to task_steps_path
    end
    
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])
    @step.update(steps_params)
    redirect_to task_steps_path(@step.task_id)
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to task_steps_path(@step.task_id)
  end

  private
  def steps_params
    params.require(:step).permit(:title, :task_id, :detail, :status)
  end
end
