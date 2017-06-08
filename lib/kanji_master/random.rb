module KanjiMaster
  class Random
    def prefecture_hash
      Prefecture.data[rand(1..47)]
    end

    def prefecture_name
      Prefecture.data[rand(1..47)][:name]
    end

    def chinese_number_character
      Constant::KANJI_NUMBER[rand(0..9)]
    end
    alias :kanji_number :chinese_number_character
    alias :number_kanji :chinese_number_character

    def person
      Person.new(Person.data[rand(0..499)])
    end

    def address
      Address.new(Address.data[rand(0..499)])
    end
  end
end
