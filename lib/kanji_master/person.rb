require 'yaml'

module KanjiMaster
  module Person
    filepath = File.join(File.dirname(__FILE__), '../data/person.yml')
    @data    = YAML.load_file(filepath)
    puts @data
    def self.data
      @data
    end
  end
end
