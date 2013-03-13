class Speaker < ActiveRecord::Base
  attr_accessible :bio, :company_name, :company_url, :name, :twitter, :website, :image, :alternate_image, :github, :slides, :rating_page, :talk_page, :remove_image, :remove_alternate_image
  validates_presence_of :name
  mount_uploader :image, SpeakerUploader
  mount_uploader :alternate_image, SpeakerUploader
end
