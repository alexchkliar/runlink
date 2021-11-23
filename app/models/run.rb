class Run < ApplicationRecord
  belongs_to :trail
  has_many :run_participants, dependent: :destroy
end
