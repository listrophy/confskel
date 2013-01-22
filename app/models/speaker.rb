class Speaker < ActiveRecord::Base
  attr_accessible :bio, :company_name, :company_url, :name, :twitter, :website
  validates_presence_of :name
end