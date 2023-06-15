class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event_participants
  has_many :events, through: :event_participants

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_one_attached :photo
  validates :first_name, :last_name, :username, :age, presence: true
  validates :sport_level, inclusion: { in: %w(débutant intermediaire expert),
            message: "%{value} n'est pas valide" }
  validates :favorite_sport, inclusion: { in: Sport::LIST }
end
