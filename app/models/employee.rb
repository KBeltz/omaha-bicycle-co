class Employee < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
