class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trails, dependent: :destroy
  has_many :user_badges, dependent: :destroy
  has_many :user_ratings, dependent: :destroy
  has_many :trail_ratings, dependent: :destroy
  has_many :run_participants, dependent: :destroy

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  has_one_attached :avatar
end
