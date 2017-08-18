require "kanji_master/reader"

module ReaderHelper
  def jp_zipcode?(text)
    reader = Reader.new
    reader.zipcode?(text)
  end

  def kanji?(text)
    reader = Reader.new
    reader.kanji?(text)
  end

  def alphabet?(text)
    reader = Reader.new
    reader.alphabet?(text)
  end
end

ActionView::Base.send :include, ReaderHelper
