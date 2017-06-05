require 'spec_helper'

describe KanjiMaster::Reader do
  let(:instance) do
    described_class.new
  end

  describe 'it should check alphabet?' do
    it 'should return true on alphabet' do
      expect(instance.alphabet?('alphabet')).to be true
    end

    it 'should return false on kanji' do
      expect(instance.alphabet?('漢字')).to be false
    end
  end

  describe 'it should check maybe_kanji?' do
    it 'should return false on alphabet' do
      expect(instance.maybe_kanji?('alphabet')).to be false
    end

    it 'should return true on kanji' do
      expect(instance.maybe_kanji?('漢字')).to be true
    end
  end
end
