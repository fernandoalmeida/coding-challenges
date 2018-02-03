# frozen_string_literal: true

# Public: Bob is a lackadaisical teenager. In conversation, his responses are
# very limited.
#
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He says 'Fine. Be that way!' if you address him without actually saying
# anything.
# He answers 'Whatever.' to anything else.
class Bob
  # PFAAO (Pure Function As An Object) pattern
  # https://tomdalling.com/blog/ruby/pure-function-as-an-object-PFAAO-pattern
  def self.hey(remark)
    new(remark).send(:answer)
  end

  private

  attr_reader :remark

  def initialize(remark)
    @remark = remark.strip
  end

  def answer
    return ANSWER[:fine] if blank?
    return ANSWER[:whoa] if yell?
    return ANSWER[:sure] if question?

    ANSWER[:whatever]
  end

  def blank?
    remark.empty?
  end

  def yell?
    remark == remark.upcase && remark != remark.downcase
  end

  def question?
    remark.end_with?('?')
  end

  ANSWER = {
    sure: 'Sure.',
    whoa: 'Whoa, chill out!',
    fine: 'Fine. Be that way!',
    whatever: 'Whatever.'
  }.freeze
  private_constant :ANSWER
end

module BookKeeping
  VERSION = 1
end
