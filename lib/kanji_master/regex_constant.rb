module KanjiMaster
  class RegexConstant
    NON_ENGLISH_REGEX = /[^\u0000-\u007F]$/i
    JAPANERE_REGEX = /[\p{Han}\p{Hiragana}\p{Katakana}，．、。ー・]+/
  end
end
