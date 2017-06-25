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

    it "should return random prefecture" do
      expect(instance.prefecture).not_to be nil
    end
  end

  1.upto(10*3) do |i|
    it "should random number kanji (#{i})" do
      expect(instance.chinese_number_character).not_to be nil
      expect(instance.number_kanji).not_to be nil
      expect(instance.kanji_number).not_to be nil
    end
  end

  # Checked Person Data in `spec/person_spec.rb`, which uses in random person, address...
  1.upto(500*0.1) do |i|
    it "should random person (#{i})" do
      expect(instance.person).not_to be nil
      expect(instance.person.name).not_to be nil
      expect(instance.person.address).not_to be nil
      expect(instance.person.name_kana).not_to be nil
      expect(instance.person.birthday).not_to be nil
    end

    it "should random address #{i}" do
      expect(instance.address).not_to be nil
      expect(instance.address.name).not_to be nil
      expect(instance.address.hira).not_to be nil
      expect(instance.address.hiragana).not_to be nil
      expect(instance.address.katakana).not_to be nil
      expect(instance.address.kana).not_to be nil
      expect(instance.address.zip_code).not_to be nil
    end

    it "should random name #{i}" do
      expect(instance.name).not_to be nil
      expect(instance.name.first_name).not_to be nil
      expect(instance.name.last_name).not_to be nil
      expect(instance.name.hira).not_to be nil
      expect(instance.name.hiragana).not_to be nil
      expect(instance.name.katakana).not_to be nil
      expect(instance.name.kana).not_to be nil
    end
  end
end
