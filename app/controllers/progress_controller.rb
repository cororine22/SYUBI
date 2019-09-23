class ProgressController < ApplicationController
  def new
    @progress = Progress.new
  end

  def index
  end

  def show
    @progress = Progress.all
  end

  def create
    @progress = Progress.find(params[:id])
  end
end
