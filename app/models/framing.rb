class Framing < ApplicationRecord
  validates :service_time, :position, presence: true
  validates :position, uniqueness: true

end
