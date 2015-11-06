module Hq
	class SponsorsController < ApplicationController
	  def index
	  	@sponsors=Sponsor.all
	  end

	  def show
	  end

	  def edit
	  end
	end
end