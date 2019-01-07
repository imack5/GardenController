class Device < ApplicationRecord
  belongs_to :garden

  validates :uuid, presence: true, length: { is: 9 }
end