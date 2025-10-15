def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if max < min
    -1
  else
    sum = 0
    for num in min..max
      sum = sum + num
    end
    sum
  end
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  if max < min
    -1
  else
    sum = min
    num = min
    while num < max
      num = num + 1
      sum = sum + num
    end
    sum
  end
end
