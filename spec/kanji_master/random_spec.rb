require 'spec_helper'

describe KanjiMaster::Random do
  let(:instance) do
    described_class.new
  end

  it 'it should return random prefecture_hash' do
    random_prefecture_hash = instance.prefecture_hash

    expect(random_prefecture_hash.keys).to eq [:name, :romaji, :hiragana, :katakana, :area]
    random_prefecture_hash.values.each do |value|
      expect(value).not_to be nil
    end
  end

  it 'it should return random prefecture_name' do
    expect(instance.prefecture_name).not_to be nil
  end
end
