class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.datetime :start
      t.datetime :end
      t.string :name

      t.timestamps
    end
  end
end
