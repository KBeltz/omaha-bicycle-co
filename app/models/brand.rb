class Brand < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
