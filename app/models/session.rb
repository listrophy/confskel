class Session < ActiveRecord::Base
  attr_accessible :description, :end, :location, :speaker, :start, :title, :session_type
end
