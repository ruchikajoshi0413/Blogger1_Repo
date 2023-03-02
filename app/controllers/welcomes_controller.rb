class WelcomesController < ApplicationController
  def index
    # @projects = Project.all
    @about_mes = Aboutme.all
  end

  def show
    @project = Project.find(params[:id])
    
  end

end
