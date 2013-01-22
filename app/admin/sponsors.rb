ActiveAdmin.register Sponsor do
  index do
    column :name
    column :twitter
    column :website
    column 'Description' do |sponsor|
      "#{ sponsor.description[1..140].rstrip }..."
    end
    default_actions
  end
end
