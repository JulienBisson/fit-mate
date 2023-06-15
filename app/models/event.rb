class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"
  has_many :event_participants
  has_many :users, through: :event_participants
  has_one_attached :photo

  validates :sport, inclusion: { in: Sport::LIST }
  validates :title, presence: true
  validates :description, length: { maximum: 800 }, presence: true
  validates :localisation, presence: true
  validates :event_level, inclusion: { in: %w(débutant intermediaire expert), message: "%{value} n'est pas valide" }
  validates :max_participant, inclusion: { in: (1..25) }
  validates :datetime, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_sport_and_localisation,
    against: %i[sport localisation],
    using: {
    tsearch: { prefix: true }
    }

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?


end
