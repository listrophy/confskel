class Location < ActiveRecord::Base
  attr_accessible :address, :description, :image, :name
  mount_uploader :image, LocationUploader
end
