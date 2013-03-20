class AddGoogleDocToStaticTexts < ActiveRecord::Migration
  def change
    add_column :static_texts, :google_doc, :string
  end
end
