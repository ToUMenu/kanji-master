module KanjiMaster
  class Random
    def prefecture_hash
      Hash[Prefecture.data.to_a.sample(1)]
    end
  end
end
