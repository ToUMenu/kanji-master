module KanjiMaster
  module StringExtension
    def katakana; kana end
    def kana
      converter = Converter.new
      converter.kana(self)
    end

    def hiragana; hira end
    def hira
      converter = Converter.new
      converter.hira(self)
    end
  end
end
