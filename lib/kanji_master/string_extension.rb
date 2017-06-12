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

    def alphabet?
      reader = Reader.new
      reader.alphabet?(self)
    end

    def maybe_kanji?
      reader = Reader.new
      reader.maybe_kanji?(self)
    end

    def kanji?
      reader = Reader.new
      reader.kanji?(self)
    end
  end
end
