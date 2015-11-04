class SubscriptionType < ActiveRecord::Base
	has_one :project_asset
end
