require 'nkf'
require 'romaji'

module KanjiMaster
  class Converter
    attr_accessor :api_key, :kana, :katakana

    def initialize(api_key: nil)
      @api_key = api_key
    end

    def katakana(text); kana(text) end
    def kana(text)
      if text.match(RegexConstant::HIRAGANA_REGEX)
        NKF.nkf('-w --katakana', text)
      elsif text.match(RegexConstant::KATAKANA_REGEX)
        text
      elsif text.match(RegexConstant::ROMAJI_REGEX)
        Romaji.romaji2kana text
      end
    end
  end
end
