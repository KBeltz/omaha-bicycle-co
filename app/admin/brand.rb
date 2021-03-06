ActiveAdmin.register Brand do
  permit_params :name, :category, :image, :image_cache, :url

  index do
    selectable_column
    id_column
    column :name
    column :category
    column :url
    actions
  end

  filter :name
  filter :category, as: :select, collection: ["Bikes", "Parts, Clothing, Etc."]

  form(:html => { :multipart => true }) do |f|
    f.inputs "Brand Details" do
      f.input :name
      f.input :category, as: :select, collection: ["Bikes", "Parts, Clothing, Etc."]
      f.input :url
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
      row :url
      row :image do
        image_tag brand.image.url(:thumb)
      end
    end
  end
end
