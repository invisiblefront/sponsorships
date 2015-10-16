class Project < ActiveRecord::Base

	validates :title, presence: true
	
	has_many :sponsors
	belongs_to :organizer
	
end
