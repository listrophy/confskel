ActiveAdmin.register StaticText do
  index do
    column :title
    column :google_doc
    column :text

    default_actions
  end

  show do |static_text|
    attributes_table do
      row :title
      row :google_doc
      row :text
    end
  end

  form do |f|
    f.inputs :title

    f.inputs do
      f.input :google_doc,
        hint: """
          To embed a Google Document, go to 'File > Publish to the web...'
          <br>
          and paste the resulting 'Document Link' here
        """.html_safe
    end

    f.inputs do
      f.input :text,
        hint: """
          Note: either the Google Document link above, or the text here
          <br>
          (formatted as markdown) are taken into account; but not both.
        """.html_safe
    end

    f.actions
  end
end
