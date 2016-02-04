ActiveAdmin.register Brand do
  permit_params :name, :type, :image, :image_cache

  index do
    selectable_column
    id_column
    column :name
    column :type
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :type, as: :select, collection: ["Bikes", "Parts, Clothing, Etc."]
      f.input :image, as: :file, :hint => f.image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :type
      row :image do
        image_tag object.image.url(:thumb)
      end
    end
  end
end
