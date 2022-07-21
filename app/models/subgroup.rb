class Subgroup < ApplicationRecord
  validates_presence_of :acronym, :description, presence: true
  validates_length_of :acronym, maximum: 5
  validates_length_of :description, maximum: 50

  has_many :positions
end
