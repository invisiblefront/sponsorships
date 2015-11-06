module Organizers
  class SponsorsController < ApplicationController
    def index
      @my_sponsors=Sponsor.all
    end
  end
end