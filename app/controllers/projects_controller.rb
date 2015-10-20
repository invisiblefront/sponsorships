class ProjectsController < ApplicationController
  def index
    @projects=Project.all
  end

  def show
  end

  def new
    @organizers=Organizer.all
  end

  def edit
  end

  def create

    @project = Project.new(project_params)

    if @project.save!
      redirect_to projects_path
    else
      respond_to do |format|
        format.js { render :js => "alert('error')" }
      end
    end


    

  end

  def delete
  end


  private
  def project_params
    params.require(:project).permit(:title, :organizer_id)
  end
end
