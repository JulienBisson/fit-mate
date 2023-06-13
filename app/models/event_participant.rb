class EventParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user_id, uniqueness: { scope: :event_id }
  validates :status, inclusion: { in: ["veut participer", "participe", "participation refusée", "intéressé", "pas intéressé"],
                                  message: "%{value} n'est pas une valeur acceptée" }

  scope :participe, -> { where(status: 'participe') }
  scope :interesse, -> { where(status: 'intéressé') }
end
