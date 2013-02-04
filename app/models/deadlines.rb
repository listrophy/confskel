class Deadlines < ActiveRecord::Base
  attr_accessible :end, :name, :start
  before_validation :use_standard_name_format
  validates_uniqueness_of :name, case_sensitive: false
  validates_datetime :start, before: :end, before_message: "must be before the end time"
  validates_datetime :end, after: :start, after_message: "must be after the start time"

  def use_standard_name_format
    self.name = self.name.strip.gsub!(/\s+/, ' ')
  end
end
