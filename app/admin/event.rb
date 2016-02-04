ActiveAdmin.register Event do
  permit_params :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  filter :name

  form(:html => { :multipart => true }) do |f|
    f.inputs "Event Details" do
      f.input :name
      f.input :description, as: :text, :input_html => { class: "tinymce" }
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
    end
  end
end
