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

  form do |f|
    f.inputs do
      f.input :name
      f.input :bio
      f.input :twitter
      f.input :website
      f.input :image, as: :file
      f.input :company_name
      f.input :company_url
    end
    f.actions
  end
end
