class Garden < ApplicationRecord
  validates :name, presence: true

  has_many :plants
  has_many :devices
end