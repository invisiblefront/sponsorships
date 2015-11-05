class FrontpageController < ApplicationController
  def index
  	@projects=Project.all
  end
end
