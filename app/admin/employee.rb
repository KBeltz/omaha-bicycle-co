ActiveAdmin.register Employee do
  permit_params :name, :description, :image, :image_cache

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :description, as: :text
      f.input :image
    end
    f.actions
  end
end
