class ProjectAsset < ActiveRecord::Base
	mount_uploader :media, ProjectMediaUploader

	validates :title, presence: true
	validates :subscription_type_id, presence: true
	validates :media, presence: true

	belongs_to :subscription_type
	#has_one :subscription_type
end
