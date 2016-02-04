ActiveAdmin.register Employee do
  permit_params :name, :description, :image, :image_cache
end
