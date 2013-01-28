class AddImageToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :image, :string
  end
end
