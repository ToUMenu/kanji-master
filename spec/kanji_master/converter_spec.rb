require 'spec_helper'

describe KanjiMaster::Converter do
  let(:instance) do
    described_class.new()
  end

  describe 'kana/katakana method' do
    it 'should convert to kana (1)' do
      expect(instance.kana('こんにちは')).to eq "コンニチハ"
      expect(instance.katakana('こんにちは')).to eq "コンニチハ"
    end

    it 'should convert to kana (2)' do
      expect(instance.kana('すごいですよ')).to eq "スゴイデスヨ"
      expect(instance.katakana('すごいですよ')).to eq "スゴイデスヨ"
    end

    it 'should convert to kana from romaji (1)' do
      expect(instance.kana('sushi')).to eq "スシ"
      expect(instance.katakana('sushi')).to eq "スシ"
    end

    it 'should convert to kana from romaji (2)' do
      expect(instance.kana('sashimi')).to eq "サシミ"
      expect(instance.katakana('sashimi')).to eq "サシミ"
    end

    it 'should return nil if argument is not hiragana or romaji (1)' do
      expect(instance.kana('漢字')).to eq nil
      expect(instance.katakana('漢字')).to eq nil
    end

    it 'should returnitself if argument is already Katakana' do
      expect(instance.kana('カタカナ')).to eq 'カタカナ'
      expect(instance.katakana('カタカナ')).to eq 'カタカナ'
    end
  end
end
