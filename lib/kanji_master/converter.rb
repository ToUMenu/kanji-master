require 'nkf'
require 'romaji'

module KanjiMaster
  class Converter
    def initialize(api_key: nil)
      @api_key = api_key
    end

    def katakana(text); kana(text) end
    def kana(text)
      if text.match(RegexConstant::HIRAGANA_REGEX)
        NKF.nkf("--katakana -Ww", text)
      elsif text.match(RegexConstant::KATAKANA_REGEX)
        text
      elsif text.match(RegexConstant::ROMAJI_REGEX)
        Romaji.romaji2kana text
      end
    end

    def hiragana(text); hira(text) end
    def hira(text)
      if text.match(RegexConstant::HIRAGANA_REGEX)
        text
      elsif text.match(RegexConstant::KATAKANA_REGEX)
        NKF.nkf("--hiragana -Ww", text)
      elsif text.match(RegexConstant::ROMAJI_REGEX)
        Romaji.romaji2kana text, :kana_type => :hiragana
      end
    end
  end
end
