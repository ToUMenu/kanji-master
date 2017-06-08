require 'yaml'
require 'active_support'

module KanjiMaster
  #  Address get data from Person.rb which access the data from `person.yml`
  class Address
    attr_accessor :zip_code, :name, :katakana, :kana, :hiragana, :hira

    filepath = File.join(File.dirname(__FILE__), '../data/person.yml')
    @data    = YAML.load_file(filepath)

    def self.data
      @data['persons']['person'].map do |h|
        new_hash = h.slice('address', 'address_kata', 'zip') if h['address'].present? && h['zip'].present?
        keys = { "address" => "name", "address_kata" => "katakana", "zip" => "zip_code" }
        Hash[new_hash.map{ |k, v| [keys[k], v]}]
      end
    end

    def initialize(address)
      converter = Converter.new
      @zip_code       = address['zip_code']
      @name           = address['name']
      @katakana       = address['katakana']
      @kana           = @katakana
      @hiragana       = converter.hira(@katakana)
      @hira           = @hiragana
    end
  end
end
