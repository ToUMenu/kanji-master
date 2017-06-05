require 'spec_helper'

describe KanjiMaster::Counter do
  let(:instance) do
    described_class.new
  end

  it 'it should count as kanji' do
    expect(instance.kanji(543210)).to eq "五四三二一零"
  end
end
