class Sport < ApplicationRecord
  has_many :events
  validates :title, presence: true
end
