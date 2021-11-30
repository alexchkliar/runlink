class UserRating < ApplicationRecord
  belongs_to :rater, optional: true, foreign_key: :rater_id, class_name: "User"
  belongs_to :ratee, optional: true, foreign_key: :ratee_id, class_name: "User"
end
