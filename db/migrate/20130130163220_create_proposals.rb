class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :title
      t.text :description
      t.string :audience
      t.text :justification
      t.text :given_before
      t.string :session_type

      t.timestamps
    end
  end
end
