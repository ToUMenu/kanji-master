# KanjiMaster

[![Gem Version](https://badge.fury.io/rb/kanji_master.svg)](https://badge.fury.io/rb/kanji_master)
[![Build Status](https://travis-ci.org/ToUMenu/kanji-master.svg?branch=master)](https://travis-ci.org/ToUMenu/kanji-master)
[![Coverage Status](https://coveralls.io/repos/github/ToUMenu/kanji-master/badge.svg?branch=master)](https://coveralls.io/github/ToUMenu/kanji-master?branch=master)

## Installation

Install with application's Gemfile:

```ruby
gem 'kanji_master'
```

Or install it yourself as:

```shell
$ gem install kanji_master
```

## Usage

### Reader

```ruby
reader = KanjiMaster::Reader.new
reader.alphabet?('word')
# => true
reader.kanji?('漢字')
# => true
reader.kanji?('かんじ')
# => false

analyzed_text = reader.read_text('漢字alphabet898989')
analyzed_text.numbers    # => "898989"
analyzed_text.alphabets  # => "alphabet"
analyzed_text.kanjis     # => "漢字"

reader.zipcode?('〒120-0001') # => true
reader.zipcode?('120-0001') # => true
reader.zipcode?('1200001') # => true
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
"가세요".kanji? # => false
"漢字".kanji? # => true

"〒125-0042".jp_zipcode? # => true
```

### Random

```ruby
random = KanjiMaster::Random.new

random.person
# => #<KanjiMaster::Person:0x007fb9e0225140 @name="岩井 美砂", @name_kana="イワイ ミサ", @gender="女", @bloodtype="A", @birthday="1980/08/08", @zip="672-8088", @address="兵庫県姫路市飾磨区英賀西町5-5-3", @address_kata="ヒョウゴケンヒメジシシカマクアガニシチョウ">

random.name
# => #<KanjiMaster::Name:0x007fb9e05c32c0 @full_name="青木 沙耶香", @first_name="沙耶香", @last_name="青木", @katakana="アオキ サヤカ", @kana="アオキ サヤカ", @hiragana="あおき さやか", @hira="あおき さやか">

random.address
# => #<KanjiMaster::Address:0x007fe3ffb0a820 @zip_code="579-8011", @name="大阪府東大阪市東石切町5-10-5", @katakana="オオサカフヒガシオオサカシヒガシイシキリチョウ", @kana="オオサカフヒガシオオサカシヒガシイシキリチョウ", @hiragana="おおさかふひがしおおさかしひがしいしきりちょう", @hira="おおさかふひがしおおさかしひがしいしきりちょう">

random.prefecture_hash
# => {:name=>"鳥取県", :romaji=>"tottori", :hiragana=>"とっとりけん", :katakana=>"トットリケン", :area=>"中国"}
random.prefecture_name
# => "秋田県"

random.number_kanji
# => "八"
```

### Counter

```ruby
counter = KanjiMaster::Counter.new
counter.kanji(3)
# => '三'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Fork this repository.

```shell
$ git checkout -b your_working_branch
```

Feel free to send the pull request!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
