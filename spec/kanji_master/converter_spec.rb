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

    it 'should return nil if argument is not hiragana (1)' do
      expect(instance.kana('alphabet')).to eq nil
      expect(instance.katakana('alphabet')).to eq "nil"
    end

    it 'should return nil if argument is not hiragana (2)' do
      expect(instance.kana('漢字')).to eq nil
      expect(instance.katakana('漢字')).to eq "nil"
    end
  end
end
