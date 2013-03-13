class AddFieldsToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :github, :string
    add_column :speakers, :slides, :string
    add_column :speakers, :rating_page, :string
    add_column :speakers, :talk_page, :string
  end
end
