module KanjiMaster
  class Random
    def prefecture_hash
      Prefecture.data[rand(1..47)]
    end

    def prefecture_name
      Prefecture.data[rand(1..47)][:name]
    end
  end
end
