class Custom < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
