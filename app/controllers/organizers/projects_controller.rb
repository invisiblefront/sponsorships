module Organizers
  class ProjectsController < ApplicationController
    def index
      @projects=Project.all
    end

    def show
      @my_project = Project.find(params[:id])
    end

    def edit
      @new_asset=ProjectAsset.new
    end

    def create_asset
      @new_asset=ProjectAsset.new(project_asset_params)

      if @new_asset.save!
        redirect_to organizers_project_path(project_asset_params[:project_id])
      else
        redirect_to edit_organizers_project_path(current_organizer.project.id)
      end 

    end

    def delete_asset
      @target_asset=ProjectAsset.find(params[:id])
      @target_asset.destroy
      #redirect_to organizers_project_path(current_organizer.project.id)
      redirect_to(:back)
    end

    def delete_all_assets
      ProjectAsset.where(:project_id => current_organizer.project.id).delete_all
      redirect_to organizers_project_path(current_organizer.project.id)
    end

    private
    def project_asset_params
      params.require(:project_asset).permit(:project_id, :title, :subscription_type_id, :media_type, :media)
    end
  end
end