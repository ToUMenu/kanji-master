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

  describe "reader extension" do
    describe 'it should check alphabet?' do
      it 'should return true on alphabet' do
        expect("alphabet".alphabet?).to be true
      end

      it 'should return false on kanji' do
        expect("漢字".alphabet?).to be false
      end
    end

    describe 'it should check maybe_kanji?' do
      it 'should return false on alphabet' do
        expect("alphabet".maybe_kanji?).to be false
      end

      it 'should return true on kanji' do
        expect("漢字".maybe_kanji?).to be true
      end
    end

    describe 'should check kanji?' do
      it 'should return false on alphabet' do
        expect('alphabet'.kanji?).to be false
      end

      it 'should return true on kanji' do
        expect('漢字'.kanji?).to be true
      end

      it 'should return false on hiragana' do
        expect('これはひらがな'.kanji?).to be false
      end

      it 'should return false on katakana' do
        expect('カタカナ'.kanji?).to be false
      end

      it 'should return false on different language' do
        expect('안녕하세요'.kanji?).to be false
      end
    end

    describe 'check jp_zipcode?' do
      it 'should check jp_zipcode? correctly' do
        expect('Not Zip Code'.jp_zipcode?).to be false
        expect('11111224'.jp_zipcode?).to be false
        expect('111'.jp_zipcode?).to be false
        expect('111113'.jp_zipcode?).to be false
        expect("郵便番号".jp_zipcode?).to be false
        expect("〒郵便番号".jp_zipcode?).to be false
      end

      it 'should return true for jp_zipcode?' do
        expect('111-1122'.jp_zipcode?).to be true
        expect('125-0042'.jp_zipcode?).to be true
        expect('〒125-0042'.jp_zipcode?).to be true
        expect('1111122'.jp_zipcode?).to be true
      end
    end
  end
end
