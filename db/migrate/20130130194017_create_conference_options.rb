class CreateConferenceOptions < ActiveRecord::Migration
  def change
    create_table :conference_options do |t|
      t.datetime :proposals_open
      t.datetime :proposals_closed

      t.timestamps
    end
  end
end
