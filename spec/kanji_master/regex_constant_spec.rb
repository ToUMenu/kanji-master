require 'spec_helper'

describe KanjiMaster::RegexConstant do
  let(:instance) do
    described_class
  end

  describe 'it should have constant' do
    it 'should return true on english' do
      expect(instance::NON_ENGLISH_REGEX).not_to be nil
    end
  end
end
