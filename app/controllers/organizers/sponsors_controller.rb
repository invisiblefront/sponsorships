module Organizers
  class SponsorsController < ApplicationController
    def index
      @project_id=current_organizer.project.id
      @my_sponsors=Sponsor.joins(:project_sponsorships).where(:project_sponsorships => {:project_id => @project_id})
    end
  end
end