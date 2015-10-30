module Organizers
  class ProjectsController < ApplicationController
    def index
      @projects=Project.all
    end
alexkhalevine.dev.rhcloud.com
    def show
      @my_project = Project.find(params[:id])
      @my_media = ProjectAsset.where(project_id:params[:id])
    end

    def edit
      @new_asset=ProjectAsset.new
    end

    def create_asset
      @new_asset=ProjectAsset.new(project_asset_params)

      if @new_asset.save!
        redirect_to organizers_project_path(project_asset_params[:project_id])
      else
        render plain: "error"
      end 
    end

    def delete_all_assets
      ProjectAsset.where(:project_id => current_organizer.project.id).delete_all
      redirect_to organizers_project_path(current_organizer.project.id)
    end

    private
    def project_asset_params
      params.require(:project_asset).permit(:project_id, :media_type, :media)
    end
  end
end