class Session < ActiveRecord::Base
  belongs_to :location

  attr_accessible :description, :end, :location_id, :room, :speaker, :start, :title, :session_type
  validates_datetime :start, before: :end, before_message: "must be before the end time"
  validates_datetime :end, after: :start, after_message: "must be after the start time"
end
