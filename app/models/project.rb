class Project < ActiveRecord::Base

	mount_uploader :banner, ProjectBannerUploader

	validates :title, presence: true
	
	has_many :project_assets
	belongs_to :organizer, dependent: :destroy

	has_many :sponsors, :through => :project_sponsorships


end
