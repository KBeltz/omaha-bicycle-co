ActiveAdmin.register Custom do
  permit_params :image, :image_cache, :caption


    index do
      selectable_column
      id_column
      column :caption
      actions
    end

    filter :caption

    form(:html => { :multipart => true }) do |f|
      f.inputs "Custom Build Details" do
        f.input :caption
        f.input :image, as: :file, :hint => f.object.image.present? \
          ? image_tag(f.object.image.url(:thumb))
          : content_tag(:span, "no image yet")
          f.input :image_cache, :as => :hidden
      end
      f.actions
    end

    show do
      attributes_table do
        row :caption
        row :image do
          image_tag custom.image.url(:thumb)
        end
      end
    end
end
