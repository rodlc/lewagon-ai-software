def colorful?(number)
  figure_s = number.to_s.chars
  figure_i = figure_s.map{|s| s.to_i}
  if figure_i.count == 1
    true
  elsif figure_i.count == 2
    figure_i << figure_i[0] * figure_i[1]
    figure_i << figure_i[1] * figure_i[2]
    if figure_i.uniq.count == figure_i.count
      true
    else
      false
    end
  else
    figure_i << figure_i[0] * figure_i[1]
    figure_i << figure_i[1] * figure_i[2] * figure_i[3]
    if figure_i.uniq.count == figure_i.count
      true
    else
      false
    end
  end
end
