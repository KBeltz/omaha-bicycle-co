ActiveAdmin.register Employee do
  permit_params :name, :description, :image, :image_cache

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  filter :name

  form(:html => { :multipart => true }) do |f|
    f.inputs "Employee Details" do
      f.input :name
      f.input :image, as: :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : content_tag(:span, "no image yet")
        f.input :image_cache, :as => :hidden
      f.input :description, as: :text, :input_html => { class: "tinymce" }
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag employee.image.url(:thumb)
      end
    end
  end
end
