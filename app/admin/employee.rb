ActiveAdmin.register Employee do
  permit_params :name, :description, :image, :image_cache

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :description, as: :text
      f.input :image, as: :file
    end
    f.actions
  end
end
