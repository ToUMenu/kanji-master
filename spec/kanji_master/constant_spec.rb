require 'spec_helper'

describe KanjiMaster::Constant do
  let(:instance) do
    described_class
  end

  describe 'should have constant' do
    it 'KANJI_NUMBER' do
      expect(instance::KANJI_NUMBER).not_to be nil
    end
  end
end
