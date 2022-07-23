class Position < ApplicationRecord
  validates_presence_of :description, presence: true
  belongs_to :subgroup
end
