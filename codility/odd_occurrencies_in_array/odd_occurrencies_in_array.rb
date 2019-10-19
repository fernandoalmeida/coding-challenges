def solution(occurrencies)
  occurrencies
    .reduce([]) { |acc, e| acc[e] = acc[e] ? nil : e; acc }
    .find { |n| n != nil }
end
