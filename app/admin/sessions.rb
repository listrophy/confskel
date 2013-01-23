ActiveAdmin.register Session do
  index do
    column :title
    column :location
    column :speaker
    column :session_type
    column :start
    column :end
    column 'Description' do |session|
      "#{ session.description[1..140].rstrip }..."
    end
    default_actions
  end

  form do |f|
    f.inputs :title
    f.inputs :location
    f.inputs :speaker
    f.inputs :session_type
    f.inputs 'Duration' do
      f.input :start, as: :datetime_select
      f.input :end, as: :datetime_select
    end
    f.inputs :description
    f.actions
  end
end
