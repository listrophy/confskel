class AddAlternateImageToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :alternate_image, :string
  end
end
