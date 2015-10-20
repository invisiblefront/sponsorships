class ProjectsController < ApplicationController
  def index

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

    # if @project.save!
    #   respond_to do |format|
    #     format.js { render :js => "createdName('"+project_params[:title]+"')" }
    #   end
    # else
    #   respond_to do |format|
    #     format.js { render :js => "alert('error')" }
    #   end
    # end

    if project_params[:title].present?
      respond_to do |format|
        format.js { render :js => "createdName('"+project_params[:title]+"')" }
      end
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
    params.require(:project).permit(:title)
  end
end
