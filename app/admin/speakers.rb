ActiveAdmin.register Speaker do
  index do
    column :name
    column :twitter
    column :website
    column 'Bio' do |speaker|
      "#{ speaker.bio[1..140].rstrip }..."
    end
    column :company_name
    column :company_url
    column 'Speaker Image' do |speaker|
      puts speaker.image_url.to_s
    end
    default_actions
  end

  form partial: 'image_form'
end
