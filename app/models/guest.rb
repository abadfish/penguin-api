class Guest < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
