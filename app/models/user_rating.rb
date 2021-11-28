class UserRating < ApplicationRecord
  belongs_to :user, optional: true
end
