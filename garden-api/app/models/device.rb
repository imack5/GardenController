class Device < ApplicationRecord
  belongs_to :garden
  has_many :announce_messages
  has_many :moisture_levels
  has_many :plants

  validates :uuid, presence: true, length: { is: 9 }
end