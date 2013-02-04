ActiveAdmin.register Deadlines do
  index do
    column :name
    column :start
    column :end
    default_actions
  end
end
