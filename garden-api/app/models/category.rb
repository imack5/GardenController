class Category < ApplicationRecord
  validates :name, presence: true
  validates :moisture_level, presence: true
end