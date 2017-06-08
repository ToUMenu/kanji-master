require 'spec_helper'

describe KanjiMaster::Person do
  let(:instance) do
    described_class
  end

  it 'should have correct data' do
    instance.data.each do |person|
      person.keys.each do |key|
        expect(person[key]).not_to be nil
      end
    end
  end
end
