class Project < ActiveRecord::Base

	mount_uploader :banner, ProjectBannerUploader

	validates :title, presence: true
	
	has_many :project_assets
	belongs_to :organizer, dependent: :destroy


	has_many :project_sponsorships
	has_many :sponsors, :through => :project_sponsorships

	accepts_nested_attributes_for :project_sponsorships
	accepts_nested_attributes_for :sponsors

end
