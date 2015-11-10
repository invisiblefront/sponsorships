class SponsorsController < ApplicationController
  def index
  	@subscription_types=SubscriptionType.all
  end

  def login
  	
  end
end
