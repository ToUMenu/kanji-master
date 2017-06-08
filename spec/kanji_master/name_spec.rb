require 'spec_helper'

describe KanjiMaster::Name do
  let(:instance) do
    described_class
  end

  it 'should have correct data' do
    instance.data.each do |name|
      name.keys.each do |key|
        expect(name[key]).not_to be nil
      end
    end
  end
end
