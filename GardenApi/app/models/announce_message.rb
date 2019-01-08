class AnnounceMessage < ApplicationRecord
  belongs_to :device

  validates :message, presence: true
end