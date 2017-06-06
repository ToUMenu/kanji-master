require 'spec_helper'
require "kanji_master/core_extension/string"

describe "KanjiMaster CoreExtension String" do
  describe 'kana/katakana method' do
    it 'should convert to kana (1)' do
      expect('こんにちは'.kana).to eq "コンニチハ"
      expect('こんにちは'.katakana).to eq "コンニチハ"
    end

    it 'should convert to kana (2)' do
      expect('すごいですよ'.kana).to eq "スゴイデスヨ"
      expect('すごいですよ'.katakana).to eq "スゴイデスヨ"
    end

    it 'should convert to kana from romaji (1)' do
      expect('sushi'.kana).to eq "スシ"
      expect('sushi'.katakana).to eq "スシ"
    end

    it 'should convert to kana from romaji (2)' do
      expect('sashimi'.kana).to eq "サシミ"
      expect('sashimi'.katakana).to eq "サシミ"
    end

    it 'should return nil if argument is not hiragana or romaji (1)' do
      expect('漢字'.kana).to eq nil
      expect('漢字'.katakana).to eq nil
    end

    it 'should returnitself if argument is already Katakana' do
      expect('カタカナ'.kana).to eq 'カタカナ'
      expect('カタカナ'.katakana).to eq 'カタカナ'
    end
  end

  describe 'hira/hiragana method' do
    it 'should convert to hira (1)' do
      expect('コンニチハ'.hira).to eq "こんにちは"
      expect('コンニチハ'.hiragana).to eq "こんにちは"
    end

    it 'should convert to hira (2)' do
      expect('スゴイデスヨ'.hira).to eq "すごいですよ"
      expect('スゴイデスヨ'.hiragana).to eq "すごいですよ"
    end

    it 'should convert to hira from romaji (1)' do
      expect('sushi'.hira).to eq "すし"
      expect('sushi'.hiragana).to eq "すし"
    end

    it 'should convert to hira from romaji (2)' do
      expect('sashimi'.hira).to eq "さしみ"
      expect('sashimi'.hiragana).to eq "さしみ"
    end

    it 'should return nil if argument is not katakana or romaji (1)' do
      expect('漢字'.hira).to eq nil
      expect('漢字'.hiragana).to eq nil
    end

    it 'should returnitself if argument is already Hiragana' do
      expect('ひらがな'.hira).to eq 'ひらがな'
      expect('ひらがな'.hiragana).to eq 'ひらがな'
    end
  end
end
