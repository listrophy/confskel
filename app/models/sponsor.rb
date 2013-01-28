class Sponsor < ActiveRecord::Base
  attr_accessible :description, :name, :sponsorship_level, :twitter, :website, :image
  validates_presence_of :name
  mount_uploader :image, SponsorUploader
end
