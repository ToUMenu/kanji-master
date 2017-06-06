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

  describe 'hira/hiragana method' do
    it 'should convert to hira (1)' do
      expect(instance.hira('コンニチハ')).to eq "こんにちは"
      expect(instance.hiragana('コンニチハ')).to eq "こんにちは"
    end

    it 'should convert to hira (2)' do
      expect(instance.hira('スゴイデスヨ')).to eq "すごいですよ"
      expect(instance.hiragana('スゴイデスヨ')).to eq "すごいですよ"
    end

    it 'should convert to hira from romaji (1)' do
      expect(instance.hira('sushi')).to eq "すし"
      expect(instance.hiragana('sushi')).to eq "すし"
    end

    it 'should convert to hira from romaji (2)' do
      expect(instance.hira('sashimi')).to eq "さしみ"
      expect(instance.hiragana('sashimi')).to eq "さしみ"
    end

    it 'should return nil if argument is not katakana or romaji (1)' do
      expect(instance.hira('漢字')).to eq nil
      expect(instance.hiragana('漢字')).to eq nil
    end

    it 'should returnitself if argument is already Hiragana' do
      expect(instance.hira('ひらがな')).to eq 'ひらがな'
      expect(instance.hiragana('ひらがな')).to eq 'ひらがな'
    end
  end
end
