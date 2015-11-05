module Sponsors
  class ProjectsController < ApplicationController

    def show
      @my_project = Project.find(params[:id])
    end

    def edit
      @new_asset=ProjectAsset.new
    end
    
    private
    def project_asset_params
      params.require(:project_asset).permit(:project_id, :title, :subscription_type_id, :media_type, :media)
    end
  end
end