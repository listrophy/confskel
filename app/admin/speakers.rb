ActiveAdmin.register Speaker do
  index do
    column :name
    column :twitter
    column :website
    column 'Bio' do |speaker|
      truncate(speaker.bio, {length: 140})
    end
    column :company_name
    column :company_url
    column 'Speaker Image' do |speaker|
      image_tag(speaker.image_url) if speaker.image_url
    end
    default_actions
  end

  show do |speaker|
    attributes_table do
      row :name
      row :twitter
      row :website
      row :bio
      row :image do
        image_tag(speaker.image_url) if speaker.image_url
      end
      row :company_name
      row :company_url
    end

  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :bio
      f.input :twitter
      f.input :website
      f.input :image, as: :file, :hint => (f.template.image_tag(speaker.image_url) if speaker.image_url)
      f.input :company_name
      f.input :company_url
    end
    f.actions
  end
end
