require 'rails_helper'

RSpec.describe Schooling, type: :model do
  describe 'validates' do
    context 'presence' do
      it { should validate_presence_of(:level) }
      it { should validate_presence_of(:percentage) }
      it { should validate_presence_of(:description) }
    end


    describe 'maximum field size' do
      it { should validate_length_of(:level).is_at_most(5) }
      it { should validate_length_of(:description).is_at_most(50) }
      end
    end
  end

