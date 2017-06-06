require 'spec_helper'

describe KanjiMaster::Random do
  let(:instance) do
    described_class.new
  end

  it 'it should return random prefecture_hash' do
    random_prefecture_hash = instance.prefecture_hash
    random_prefecture_code = random_prefecture_hash.keys.first
    random_prefecture_hash = random_prefecture_hash[random_prefecture_code]

    expect(random_prefecture_hash.keys).to eq [:name, :romaji, :hiragana, :katakana, :area]
    random_prefecture_hash.values.each do |value|
      expect(value).not_to be nil
    end
  end
end
