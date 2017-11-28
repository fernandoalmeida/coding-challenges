module Pangram
  VERSION = 6
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.freeze

  def pangram?(phrase)
    phrase
      .downcase
      .gsub(/[^#{ALPHABET}]/, '')
      .chars
      .uniq
      .size == ALPHABET.size
  end
  module_function :pangram?
end
