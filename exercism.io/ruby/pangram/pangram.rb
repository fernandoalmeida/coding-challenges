module Pangram
  VERSION = 6
  PANGRAM_SIZE = 'abcdefghijklmnopqrstuvwxyz'.size

  def pangram?(phrase)
    phrase
      .downcase
      .gsub(/[^a-z]/, '')
      .chars
      .uniq
      .size == PANGRAM_SIZE
  end

  module_function :pangram?
end
