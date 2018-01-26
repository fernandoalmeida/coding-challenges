class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase
      .downcase
      .gsub(/[^\w']/, ' ')
      .split(' ')
      .group_by { |word| word.gsub(/'([^']+)'/, '\1') }
      .reduce({}) { |acc, (word, list)| acc.merge!(word => list.size) }
  end

  private

  attr_reader :phrase
end
