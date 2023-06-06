class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"
  validates :sport, inclusion: { in: Sport::LIST }
  validates :title, presence: true
  validates :description, length: { maximum: 800 }, presence: true
  validates :localisation, presence: true
  validates :event_level, inclusion: { in: %w(beginner intermediate expert), message: "%{value} is not valid" }
  validates :max_participant, inclusion: { in: (1..25) }
  validates :datetime, presence: true

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?

end
