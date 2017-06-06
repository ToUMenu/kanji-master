require 'yaml'

module KanjiMaster
  module Prefecture
    filepath = File.join(File.dirname(__FILE__), '../data/prefecture.yml')
    @data    = YAML.load_file(filepath)

    def self.data
      @data
    end
  end
end
