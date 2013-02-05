ActiveAdmin.register Location do
  index do
    column :name
    column 'Location Image' do |location|
      image_tag(location.image_url) if location.image_url
    end
    column :address
    column :description

    default_actions
  end

  show do |location|
    attributes_table do
      row :name
      row :image do
        image_tag(location.image_url) if location.image_url
      end
      row :address
      row :description
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image, as: :file, :hint => (f.template.image_tag(location.image_url) if location.image_url)
      f.input :address
      f.input :description
    end
    f.actions
  end
end
