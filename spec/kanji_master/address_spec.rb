require 'spec_helper'

describe KanjiMaster::Address do
  let(:instance) do
    described_class
  end

  it 'should have correct data' do
    instance.data.each do |address|
      address.keys.each do |key|
        expect(address[key]).not_to be nil
      end
    end
  end
end
