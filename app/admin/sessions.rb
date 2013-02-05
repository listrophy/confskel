ActiveAdmin.register Session do
  index do
    column :title
    column :location
    column :speaker
    column :session_type
    column :start
    column :end
    column 'Description' do |session|
      truncate(session.description, {length: 140})
    end
    default_actions
  end

  form do |f|
    f.inputs :title
    f.inputs do
      f.input :location,
        hint: """
          You may need to add a <a href=/admin/locations/new title=\"Add
          a new location\">new location</a> first. <br> Note: you can
          edit this session later if you don't want to add a location
          now.
        """.html_safe
    end
    f.inputs :room
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
