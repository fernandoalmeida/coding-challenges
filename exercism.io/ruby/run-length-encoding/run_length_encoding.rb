module RunLengthEncoding
  def encode(input, parsed = [], count = 1)
    return parsed.join if input.empty?

    if input[0] != input[1]
      parsed[parsed.size] = count > 1 ? "#{count}#{input[0]}" : input[0]
      count = 0
    end

    encode(input[1..-1], parsed, count + 1)
  end
  module_function :encode

  def decode(input, parsed = [], number = '')
    return parsed.join if input.empty?

    if input[0].to_i > 0
      number << input[0]
    else
      parsed << input[0].to_s * (number.empty? ? 1 : number.to_i)
      number = ''
    end

    decode(input[1..-1], parsed, number)
  end
  module_function :decode
end

module BookKeeping
  VERSION = 3
end
