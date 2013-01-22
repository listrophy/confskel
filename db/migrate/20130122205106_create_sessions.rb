class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :description
      t.string :speaker
      t.string :type
      t.string :location

      t.timestamps
    end
  end
end
