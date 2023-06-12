class EventParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :status, inclusion: { in: ["veut participer", "participe", "participation refusée", "intéressé", "pas intéressé"],
                                  message: "%{value} n'est pas une valeur acceptée" }
end
