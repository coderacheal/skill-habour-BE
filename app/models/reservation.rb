class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :Course
  
    # validations
    validates :city, presence: true
    validates :course_name, presence: true
    validates :reservation_date, presence: true
    validates :reservation_id, presence: true
    validates :user_id, presence: true
end
