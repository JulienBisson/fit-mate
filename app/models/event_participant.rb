class EventParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :status, inclusion: { in: %w[ accept decline maybe ],
                                  message: "%{value} is not valid" }
end
