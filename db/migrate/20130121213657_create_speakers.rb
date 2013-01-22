class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :twitter
      t.string :website
      t.text :bio
      t.string :company_name
      t.string :company_url

      t.timestamps
    end
  end
end
