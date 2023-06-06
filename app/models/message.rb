class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatbox
  validates :content, length: { minimum: 1 }, presence: true
end
