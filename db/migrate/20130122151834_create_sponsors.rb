class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :twitter
      t.text :description
      t.string :website
      t.string :sponsorship_level

      t.timestamps
    end
  end
end
