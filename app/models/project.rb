class Project < ActiveRecord::Base

	validates :title, presence: true
	
	has_and_belongs_to_many :sponsors
	
	belongs_to :organizer, dependent: :destroy
	
end
