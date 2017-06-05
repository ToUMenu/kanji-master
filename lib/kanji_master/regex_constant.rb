module KanjiMaster
  class RegexConstant
    NON_ENGLISH_REGEX = /[^\u0000-\u007F]$/i
    KANJI_REGEX = /[\p{Han}]+/
  end
end
