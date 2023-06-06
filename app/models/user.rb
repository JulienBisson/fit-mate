class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  validates :first_name, :last_name, :username, :age, presence: true
  validates :level_user, inclusion: { in: %w(beginner intermediate expert), message: "%{value} is not valid" }
end
