class RunParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :run
  # validates :difficulty, presence: true
  attr_accessor :hours, :minutes, :seconds
end
