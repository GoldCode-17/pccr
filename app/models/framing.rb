class Framing < ApplicationRecord
  validates :service_time, :position, presence: true
  validates :position, uniqueness: true
  validates :service_time, length: { maximum: 30 }
end
