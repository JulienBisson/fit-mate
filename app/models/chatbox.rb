class Chatbox < ApplicationRecord
  belongs_to :event
  has_many :messages
end
