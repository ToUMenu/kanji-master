# KanjiMaster

[![Gem Version](https://badge.fury.io/rb/kanji_master.svg)](https://badge.fury.io/rb/kanji_master)
[![Build Status](https://travis-ci.org/ToUMenu/kanji-master.svg?branch=master)](https://travis-ci.org/ToUMenu/kanji-master)
[![Coverage Status](https://coveralls.io/repos/github/ToUMenu/kanji-master/badge.svg?branch=master)](https://coveralls.io/github/ToUMenu/kanji-master?branch=master)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kanji_master'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kanji_master

## Usage

### Reader

```ruby
reader = KanjiMaster::Reader.new
reader.alphabet?('word')
# => true
reader.maybe_kanji?('漢字')
# => true

analyzed_text = reader.read_text('漢字alphabet898989')
analyzed_text.numbers    # => "898989"
analyzed_text.alphabets  # => "alphabet"
analyzed_text.kanjis     # => "漢字"
```

### Counter

```ruby
counter = KanjiMaster::Counter.new
counter.kanji(3)
# => '三'
```

### Converter

```ruby
converter = KanjiMaster::Conveter.new
converter.kana('すし') #=> 'スシ'
converter.kana('sushi') #=> 'スシ'
converter.hira('スシ') #=> 'すし'
converter.hira('sushi') #=> 'すし'
```

### String Core Extension

```ruby
require "kanji_master/core_extension/string"

"すし".kana #=> 'スシ'
"sushi".kana #=> 'スシ'
"スシ".hira #=> 'すし'
"sushi".hira #=> 'すし'

"sushi".alphabet? # => true
"sushi".maybe_kanji? # => false
```

### Random

```ruby
random = KanjiMaster::Random.new

random.prefecture_hash
# => {:name=>"鳥取県", :romaji=>"tottori", :hiragana=>"とっとりけん", :katakana=>"トットリケン", :area=>"中国"}
random.prefecture_name
# => "秋田県"

random.number_kanji
# => "八"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/toumenu/kanji_master. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
