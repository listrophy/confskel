class ConferenceOptions < ActiveRecord::Base
  attr_accessible :proposals_closed, :proposals_open
  validate :there_can_be_only_one
  validates_presence_of :proposals_closed, :proposals_open

  def there_can_be_only_one
    # Allow updating a singleton
    if ConferenceOptions.count > 0 && id.nil?
      errors.add :base, "There can no more than a single set of conference options"
    end
  end
end
