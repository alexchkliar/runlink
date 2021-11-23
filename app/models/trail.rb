class Trail < ApplicationRecord
  belongs_to :user
  has_many :runs, dependent: :destroy
  has_many_attached :photos
end
