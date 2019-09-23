class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_task_id
    @step.task_id = Step.find_by(params[:id])
  end
end
