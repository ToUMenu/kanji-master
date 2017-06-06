module KanjiMaster
  class RegexConstant
    NON_ENGLISH_REGEX = /[^\u0000-\u007F]$/i

    # Japanese Regex
    KANJI_REGEX = /[\p{Han}]+/
    HIRAGANA_REGEX = /[\p{Hiragana}]+/
  end
end
