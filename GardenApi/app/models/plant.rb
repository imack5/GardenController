class Plant < ApplicationRecord
  belongs_to :garden
  belongs_to :device
  belongs_to :category


  validates :name, presence: true
  validates :category, presence: true
end