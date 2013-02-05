class ChangeLocationInSessionsToAssociation < ActiveRecord::Migration
  def up
    remove_column :sessions, :location
    add_column :sessions, :location_id, :integer
  end

  def down
    add_column :sessions, :location, :string
    remove_column :sessions, :location_id
  end
end
