module KanjiMaster
  class Reader
    def alphabet?(text)
      !(RegexConstant::NON_ENGLISH_REGEX === text)
    end

    def maybe_kanji?(text)
      !alphabet?(text)
    end

    def read_text(text)
      matched_kanji = text.match(RegexConstant::JAPANERE_REGEX.to_s)

      text_analyse             = {}
      text_analyse[:full_text] = text
      text_analyse[:alphabets] = text.tr('^A-Za-z', '')
      text_analyse[:numbers]   = text.tr('^0-9', '')
      text_analyse[:kanjis]    = matched_kanji[0] if matched_kanji
      Text.new(text_analyse)
    end
  end
end
