class AllocationsController < ApplicationController
  def index
    @allocations = Allocation.all
  end

  def create
    allocation = Allocation.new(user_id: params[:user_id], project_id: params[:project_id])
    if allocation.save
      redirect_to user_path(params[:user_id]), notice: "Tarea asiganada"
    else
      redirect_to user_path(params[:user_id]), alert: "no se ha podido asignar"
    end
  end

end
