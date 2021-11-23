class Trail < ApplicationRecord
  belongs_to :user
  has_many :runs, dependent: :destroy
end
