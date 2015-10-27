module Hq
  class ProjectsController < ApplicationController
    def index
      @projects=Project.all
    end

    def show
    end

    def new
      @organizer_id=params[:organizer_id]
      @organizer_name=params[:organizer_name]
      @organizer_email=params[:organizer_email]
    end

    def edit
    end

    def create

      @project = Project.new(project_params)

      if @project.save!
        redirect_to hq_projects_path
      else
        respond_to do |format|
          format.js { render :js => "alert('error')" }
        end
      end

    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
     
      redirect_to hq_projects_path
    end


    private
    def project_params
      params.require(:project).permit(:title, :organizer_id)
    end
  end
end