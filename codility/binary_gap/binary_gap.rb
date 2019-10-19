def solution(n)
  found_one = false
  current_gap = 0
  max_gap = 0

  n.to_s(2).chars.each do |digit|
    if digit == '0'
      current_gap += 1
    else
      if found_one == true # second 1
        if current_gap > max_gap
          max_gap = current_gap
        end

        current_gap = 0
      end

      found_one = true # first 1
    end
  end

  max_gap
end
