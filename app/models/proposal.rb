class Proposal < ActiveRecord::Base
  attr_accessible :audience, :description, :email, :given_before, :justification, :name, :title, :twitter, :session_type
end
