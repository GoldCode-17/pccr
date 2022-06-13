require 'rails_helper'

RSpec.describe Subgroup, type: :model do
  context 'Crud Subgroup' do

    it 'Create Subgroup' do
      subgroup_type = Subgroup.create(acronym: "F1", description: "FUNDAMENTAL 1")
      expect(subgroup_type.acronym).to eq("F1")
      expect(subgroup_type.description).to eq("FUNDAMENTAL 1")
    end

    it 'Update Subgroup' do
      subgroup_type = Subgroup.create(acronym: "F1", description: "FUNDAMENTAL 1")
      subgroup_type.update(acronym: "F9", description: "FUNDAMENTAL 9")
      expect(subgroup_type.acronym).to eq("F9")
      expect(subgroup_type.description).to eq("FUNDAMENTAL 9")
    end

    describe 'required validations' do
      it { should validate_presence_of(:acronym) }
      it { should validate_presence_of(:description) }
    end

    describe 'maximum field size' do
      it { should validate_length_of(:acronym).is_at_most(5) }
      it { should validate_length_of(:description).is_at_most(50) }
    end

    it 'Delete Subgroup' do
      subgroup_type = Subgroup.create(acronym: "F1", description: "FUNDAMENTAL 1")
      subgroup_type.destroy
      expect { subgroup_type.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
