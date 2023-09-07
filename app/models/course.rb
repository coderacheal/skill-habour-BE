class Course < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
end
