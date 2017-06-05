module KanjiMaster
  class Text
    attr_accessor :text_analyse, :full_text, :kanjis, :numbers, :alphabets

    def initialize(text_analyse)
      @text_analyse = text_analyse
      @full_text = text_analyse[:full_text]
      @kanjis = text_analyse[:kanjis]
      @numbers = text_analyse[:numbers]
      @alphabets = text_analyse[:alphabets]
    end
  end
end
