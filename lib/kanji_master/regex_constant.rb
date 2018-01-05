module KanjiMaster
  class RegexConstant
    NON_ENGLISH_REGEX = /[^\u0000-\u007F]$/i

    NUMBER_REGEX = /^[0-9]$/i

    # Japanese Regex
    KANJI_REGEX    = /[\p{Han}]+/
    HIRAGANA_REGEX = /[\p{Hiragana}]+/
    KATAKANA_REGEX = /[\p{Katakana}]+/
    ROMAJI_REGEX   = /^[a-zA-Z]/

    JP_ZIPCODE_REGEX = /^\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{7}$|^[〒]\d{3}[-]\d{4}$/
  end
end
