class Schooling < ApplicationRecord
  validates_presence_of :level, :description, :percentage, presence: true
  validates_length_of :level, maximum: 5
  validates_length_of :description, maximum: 50
end
