class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :reservation_date, presence: true
end
