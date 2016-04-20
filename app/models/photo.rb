class Photo < ActiveRecord::Base
  has_one :user
  mount_uploader :file, PhotoUploader
end
