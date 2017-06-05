module KanjiMaster
  class Counter
    def kanji(number)
      number_array = number.to_s.split('').map(&:to_i)
      kanji_string = ""
      number_array.each do |i|
        case i
        when 0
          kanji_string = kanji_string + "零"
        when 1
          kanji_string = kanji_string + "一"
        when 2
          kanji_string = kanji_string + "二"
        when 3
          kanji_string = kanji_string + "三"
        when 4
          kanji_string = kanji_string + "四"
        when 5
          kanji_string = kanji_string + "五"
        when 6
          kanji_string = kanji_string + "六"
        when 7
          kanji_string = kanji_string + "七"
        when 8
          kanji_string = kanji_string + "八"
        when 9
          kanji_string = kanji_string + "九"
        end
      end
      kanji_string
    end
  end
end
