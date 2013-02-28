ActiveAdmin.register StaticText do
  index do
    column :title
    column :text

    default_actions
  end

  show do |static_text|
    attributes_table do
      row :title
      row :text
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :text
    end

    f.actions
  end
end
