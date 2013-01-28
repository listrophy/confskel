class Speaker < ActiveRecord::Base
  attr_accessible :bio, :company_name, :company_url, :name, :twitter, :website, :image
  validates_presence_of :name
  mount_uploader :image, SpeakerUploader
end
