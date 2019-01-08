class MoistureLevel < ApplicationRecord
  belongs_to :device

  validates :reading, presence: true
end