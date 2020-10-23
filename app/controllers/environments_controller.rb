class EnvironmentsController < ApplicationController
  def show
    @environment = Environment.find(params[:id])
  end
end
