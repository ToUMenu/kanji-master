module KanjiMaster
  class Counter
    def kanji(number)
      number_array = number.to_s.split('').map(&:to_i)
      kanji_hash = Constant::KANJI_NUMBER
      kanji_string = ""
      number_array.each do |i|
        kanji_string = kanji_string + kanji_hash[i]
      end
      kanji_string
    end
  end
end
