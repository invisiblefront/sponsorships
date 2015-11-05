class SponsorsController < ApplicationController
  def index
  	@subscription_types=SubscriptionType.all
  end
end
