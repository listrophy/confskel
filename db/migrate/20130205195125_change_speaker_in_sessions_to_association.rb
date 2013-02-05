class ChangeSpeakerInSessionsToAssociation < ActiveRecord::Migration
  def up
    remove_column :sessions, :speaker
    add_column :sessions, :speaker_id, :integer
  end

  def down
    add_column :sessions, :speaker, :string
    remove_column :sessions, :speaker_id
  end
end
