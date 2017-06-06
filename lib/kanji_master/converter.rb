require 'nkf'

module KanjiMaster
  class Converter
    attr_accessor :api_key, :kana, :katakana

    def initialize(api_key: nil)
      @api_key = api_key
    end

    def katakana(text); kana(text) end
    def kana(text)
      return nil unless text.match(RegexConstant::HIRAGANA_REGEX)
      NKF.nkf('-w --katakana', text)
    end
  end
end
