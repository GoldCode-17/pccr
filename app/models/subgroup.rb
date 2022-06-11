class Subgroup < ApplicationRecord
  validates :acronym, :description, presence: true
end
