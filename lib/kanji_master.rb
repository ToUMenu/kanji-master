require "kanji_master/version"
require "kanji_master/constant"
require "kanji_master/regex_constant"

# Data Model
require "kanji_master/address"
require "kanji_master/name"
require "kanji_master/prefecture"
require "kanji_master/person"

# KanjiMaster Model Class
require "kanji_master/text"

# Drivers
require "kanji_master/random"
require "kanji_master/reader"
require "kanji_master/counter"
require "kanji_master/converter"

# Rails Helper
require 'kanji_master/reader_helper' if defined? ActionView
