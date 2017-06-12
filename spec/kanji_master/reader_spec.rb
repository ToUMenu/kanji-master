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

  describe 'should check kanji?' do
    it 'should return false on alphabet' do
      expect(instance.kanji?('alphabet')).to be false
    end

    it 'should return true on kanji' do
      expect(instance.kanji?('漢字')).to be true
    end

    it 'should return false on hiragana' do
      expect(instance.kanji?('これはひらがな')).to be false
    end

    it 'should return false on katakana' do
      expect(instance.kanji?('カタカナ')).to be false
    end

    it 'should return false on different language' do
      expect(instance.kanji?('안녕하세요')).to be false
    end
  end

  describe 'it should read_text' do
    it 'should read_text correctly (1)' do
      analyzed_text = instance.read_text('漢字alphabet898989')
      expect(analyzed_text.full_text).to eq "漢字alphabet898989"
      expect(analyzed_text.numbers).to eq "898989"
      expect(analyzed_text.alphabets).to eq "alphabet"
      expect(analyzed_text.kanjis).to eq "漢字"
    end

    it 'should read_text correctly (2)' do
      analyzed_text = instance.read_text('english漢字ですalphabet898989')
      expect(analyzed_text.full_text).to eq "english漢字ですalphabet898989"
      expect(analyzed_text.numbers).to eq "898989"
      expect(analyzed_text.alphabets).to eq "englishalphabet"
      expect(analyzed_text.kanjis).to eq "漢字"
    end
  end
end
