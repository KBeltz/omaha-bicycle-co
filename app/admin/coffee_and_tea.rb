ActiveAdmin.register CoffeeAndTea do
  permit_params :brand, :description, :image, :image_cache

  index do
    selectable_column
    id_column
    column :brand
    column :description
    actions
  end

  filter :brand

  form(:html => { :multipart => true }) do |f|
    f.inputs "Coffee and Tea Details" do
      f.input :brand
      f.input :description, as: :text, :input_html => { class: "tinymce" }
      f.input :image, as: :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : content_tag(:span, "no image yet")
        f.input :image_cache, :as => :hidden
    end
    f.actions
  end

  show do
    attributes_table do
      row :brand
      row :description
      row :image do
        image_tag coffee_and_tea.image.url(:thumb)
      end
    end
end
