class Event < ApplicationRecord
  belongs_to :organizer
  belongs_to :sport
  validates :title, presence: true
  validates :description, length: { maximum: 500 }, presence: true
  validates :localisation, presence: true
  validates :soldout, presence: true
  validates :event_level, inclusion: { in: %w(beginner intermediate expert), message: "%{value} is not valid" }
  validates :max_participant, inclusion: { in: (1..25) }
  validates :datetime, presence: true
end
