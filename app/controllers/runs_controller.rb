class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])
  end

  def create
  end

  def my_runs
  end

  def my_run
  end
end
