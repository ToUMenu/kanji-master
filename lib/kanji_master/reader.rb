module KanjiMaster
  class Reader
    def alphabet?(text)
      !(RegexConstant::NON_ENGLISH_REGEX === text)
    end

    def maybe_kanji?(text)
      !alphabet?(text)
    end
  end
end
