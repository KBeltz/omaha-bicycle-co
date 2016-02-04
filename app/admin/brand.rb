ActiveAdmin.register Brand do
  permit_params :name, :type, :image, :image_cache
end
