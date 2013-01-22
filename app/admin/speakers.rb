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
    default_actions
  end
end
