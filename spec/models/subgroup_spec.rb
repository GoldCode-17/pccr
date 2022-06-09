require 'rails_helper'

RSpec.describe Subgroup, type: :model do
  context 'Crud Subgroup' do
    it 'Create Subgroup' do
      subgroup_type = Subgroup.create(acronym: "F1", description: "FUNDAMENTAL 1")
      
      expect(subgroup_type.acronym).to eq("F1")
      expect(subgroup_type.description).to eq("FUNDAMENTAL 1")
    end
  end
end
