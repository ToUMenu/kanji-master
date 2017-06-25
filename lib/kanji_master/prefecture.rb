require 'yaml'

module KanjiMaster
  class Prefecture
    filepath = File.join(File.dirname(__FILE__), '../data/prefecture.yml')
    @data    = YAML.load_file(filepath)

    def self.data
      @data
    end
    attr_accessor :name, :romaji, :hiragana, :katakana, :area

    def initialize(prefecture)
      @name     = prefecture[:name]
      @romaji   = prefecture[:romaji]
      @hiragana = prefecture[:hiragana]
      @katakana = prefecture[:katakana]
      @area     = prefecture[:area]
    end
  end
end
