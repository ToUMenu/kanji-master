module KanjiMaster
  class Reader
    def alphabet?(text)
      !(RegexConstant::NON_ENGLISH_REGEX === text)
    end

    def number?(text)
      (RegexConstant::NUMBER_REGEX === text)
    end

    def maybe_kanji?(text)
      !alphabet?(text)
    end

    def kanji?(text)
      RegexConstant::KANJI_REGEX === text
    end

    def zip_code?(text); zipcode?(text) end
    def zipcode?(text)
      RegexConstant::JP_ZIPCODE_REGEX === text
    end

    def read_text(text)
      matched_kanji = text.match(RegexConstant::KANJI_REGEX)

      text_analyse             = {}
      text_analyse[:full_text] = text
      text_analyse[:alphabets] = text.tr('^A-Za-z', '')
      text_analyse[:numbers]   = text.tr('^0-9', '')
      text_analyse[:kanjis]    = matched_kanji[0] if matched_kanji

      Text.new(text_analyse)
    end
  end
end
