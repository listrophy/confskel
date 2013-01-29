ActiveAdmin.register Sponsor do
  index do
    column :name
    column :twitter
    column :website
    column 'Description' do |sponsor|
      truncate(sponsor.description, {length: 140})
    end
    column 'Sponsor Image' do |sponsor|
      image_tag(sponsor.image_url) if sponsor.image_url
    end

    default_actions
  end

  show do |sponsor|
    attributes_table do
      row :name
      row :twitter
      row :description
      row :website
      row :sponsorship_level
      row :image do
        image_tag(sponsor.image_url) if sponsor.image_url
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :twitter
      f.input :description
      f.input :website
      f.input :sponsorship_level
      f.input :image, as: :file
    end
    f.actions
  end
end
