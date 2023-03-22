class WelcomesController < ApplicationController
  def index
    @projects = Project.all
    @project1s = Project1.all
    @pictures = Picture.all
    @aboutmes = Aboutme.all
    @skills = Skill.all
    @skills = Skill.where('status = true')
    @charges = Charge.all
    @contactmes = Contactme.all
    
  end

  def show
    @project = Project.find(params[:id])
    
  end

end
