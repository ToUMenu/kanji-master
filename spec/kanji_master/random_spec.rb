require 'spec_helper'

describe KanjiMaster::Random do
  let(:instance) do
    described_class.new
  end

  1.upto(47*3) do |i|
    it "should return random prefecture_hash (#{i})" do
      random_prefecture_hash = instance.prefecture_hash

      expect(random_prefecture_hash.keys).to eq [:name, :romaji, :hiragana, :katakana, :area]
      random_prefecture_hash.values.each do |value|
        expect(value).not_to be nil
      end
    end

    it 'should return random prefecture_name' do
      expect(instance.prefecture_name).not_to be nil
    end
  end

  1.upto(10*3) do |i|
    it "should random number kanji (#{i})" do
      expect(instance.chinese_number_character).not_to be nil
      expect(instance.number_kanji).not_to be nil
    end
  end
end
