class ProjectSponsorship < ActiveRecord::Base
	belongs_to :project
    belongs_to :sponsor
end
