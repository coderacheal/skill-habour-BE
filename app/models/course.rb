class Course < ApplicationRecord
    has_many :reservation

    validates :name, presence: true, length: { maximum: 100 }
end
