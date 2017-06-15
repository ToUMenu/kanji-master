require 'spec_helper'

describe KanjiMaster::RegexConstant do
  let(:instance) do
    described_class
  end

  describe 'it should have constant' do
    it 'NON_ENGLISH_REGEX' do
      expect(instance::NON_ENGLISH_REGEX).not_to be nil
    end

    it 'KANJI_REGEX' do
      expect(instance::KANJI_REGEX).not_to be nil
    end

    it 'HIRAGANA_REGEX' do
      expect(instance::HIRAGANA_REGEX).not_to be nil
    end

    it 'KATAKANA_REGEX' do
      expect(instance::KATAKANA_REGEX).not_to be nil
    end

    it 'ROMAJI_REGEX' do
      expect(instance::ROMAJI_REGEX).not_to be nil
    end

    it 'JP_ZIPCODE_REGEX' do
      expect(instance::JP_ZIPCODE_REGEX).not_to be nil
    end
  end
end
