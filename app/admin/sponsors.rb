ActiveAdmin.register Sponsor do
  index do
    column :name
    column :twitter
    column :website
    column 'Description' do |speaker|
      "#{ speaker.bio[1..140].rstrip }..."
    end
    default_actions
  end
end
