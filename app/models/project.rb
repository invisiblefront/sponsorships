class Project < ActiveRecord::Base

	mount_uploader :banner, ProjectBannerUploader

	validates :title, presence: true
	
	has_and_belongs_to_many :sponsors

	has_many :project_assets
	
	belongs_to :organizer, dependent: :destroy
	
end
