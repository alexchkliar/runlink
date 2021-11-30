class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :trails, dependent: :destroy
  has_many :user_badges, dependent: :destroy
  has_many :rater_user_ratings, dependent: :destroy, foreign_key: :rater_id, class_name: "UserRating"
  has_many :ratee_user_ratings, dependent: :destroy, foreign_key: :ratee_id, class_name: "UserRating"
  has_many :trail_ratings, dependent: :destroy
  has_many :run_participants, dependent: :destroy

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  has_one_attached :avatar
end
