require 'yaml'
require 'active_support'
require 'active_support/core_ext'

module KanjiMaster
  #  Name get data from Person.rb which access the data from `person.yml`
  class Name
    attr_accessor :zip_code, :name, :katakana, :kana, :hiragana, :hira, :first_name, :last_name

    filepath = File.join(File.dirname(__FILE__), '../data/person.yml')
    @data    = YAML.load_file(filepath)

    def self.data
      @data['persons']['person'].map do |h|
        new_hash = h.slice('name', 'name_kana') if h['name'].present? && h['name_kana'].present?
        keys = { "name" => "full_name", "name_kana" => "katakana" }
        Hash[new_hash.map{ |k, v| [keys[k], v]}]
      end
    end

    def initialize(name)
      converter = Converter.new
      @full_name       = name['full_name']
      @first_name      = @full_name.split[1]
      @last_name       = @full_name.split[0]
      @katakana        = name['katakana']
      @kana            = @katakana
      @hiragana        = converter.hira(@katakana)
      @hira            = @hiragana
    end
  end
end
