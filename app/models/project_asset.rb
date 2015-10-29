class ProjectAsset < ActiveRecord::Base
	mount_uploader :media, ProjectMediaUploader
end
