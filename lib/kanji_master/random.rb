module KanjiMaster
  class Random
    def prefecture_hash
      Prefecture.data[rand(1..47)]
    end

    def prefecture_name
      Prefecture.data[rand(1..47)][:name]
    end

    def number_kanji; chinese_number_character end
    def chinese_number_character
      Constant::KANJI_NUMBER[rand(0..9)]
    end

    def person
      Person.new(Person.data[rand(0..499)])
    end

    def address
      Address.new(Address.data[rand(0..499)])
    end
  end
end
