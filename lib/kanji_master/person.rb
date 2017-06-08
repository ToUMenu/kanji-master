require 'yaml'

module KanjiMaster
  class Person
    filepath = File.join(File.dirname(__FILE__), '../data/person.yml')
    @data    = YAML.load_file(filepath)

    def self.data
      @data['persons']['person']
    end
    attr_accessor :name, :name_kana, :gender, :bloodtype, :birthday, :zip, :address, :address_kata

    def initialize(person)
      @name           = person['name']
      @name_kana      = person['name_kana']
      @gender         = person['gender']
      @bloodtype      = person['bloodtype']
      @birthday       = person['birthday']
      @zip            = person['zip']
      @address        = person['address']
      @address_kata   = person['address_kata']
    end
  end
end
