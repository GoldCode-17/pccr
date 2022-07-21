require 'rails_helper'

RSpec.describe Framing, type: :model do
  context 'Crud Framing' do

    it 'persists a framing with valid attributes' do
      framing = Framing.create(service_time: "1 Ano até 3 Anos", position: 1)

      expect(framing).to be_persisted
    end

    it 'change a framing with valid attributes' do
      framing = Framing.create(service_time: "1 Ano até 3 Anos", position: 1)
      framing.update(service_time: "3 Anos e 1 Dia até 5 Anos", position: 2)

      expect(framing).to be_persisted
    end

    it 'Delete framing' do
      framing = Framing.create(service_time: "1 Ano até 3 Anos", position: 1)
      framing.destroy

      expect { framing.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
