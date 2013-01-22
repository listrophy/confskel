class Sponsor < ActiveRecord::Base
  attr_accessible :description, :name, :sponsorship_level, :twitter, :website
end
