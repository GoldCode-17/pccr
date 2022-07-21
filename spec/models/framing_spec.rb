require 'rails_helper'

RSpec.describe Framing, type: :model do
  context 'Crud Framing' do
    it 'persiste um enquadramento com atributos válidos' do
      framing = Framing.create(service_time: "1 Ano até 3 Anos", position: 1)

      expect(framing).to be_persisted
    end
  end
end
