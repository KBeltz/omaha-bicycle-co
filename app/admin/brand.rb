ActiveAdmin.register Brand do
  permit_params :name, :category, :image, :image_cache

  index do
    selectable_column
    id_column
    column :name
    column :category
    actions
  end

  filter :name
  filter :category, as: :select, collection: ["Bikes", "Parts, Clothing, Etc."]

  form(:html => { :multipart => true }) do |f|
    f.inputs "Brand Details" do
      f.input :name
      f.input :category, as: :select, collection: ["Bikes", "Parts, Clothing, Etc."]
      f.input :image, as: :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : content_tag(:span, "no image yet")
        f.input :image_cache, :as => :hidden
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :category
      # row :image do
      #   image_tag object.image
      # end
    end
  end
end
