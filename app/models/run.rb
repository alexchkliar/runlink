class Run < ApplicationRecord
  belongs_to :trail
  has_many :run_participants, dependent: :destroy
  accepts_nested_attributes_for :run_participants
  validates :date, presence: true
end
