class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatbox
  validates :content, length: { minimum: 1 }, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
