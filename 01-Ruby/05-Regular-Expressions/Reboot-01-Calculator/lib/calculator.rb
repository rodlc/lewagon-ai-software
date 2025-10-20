def calculator(first_num, second_num, operator)
  case operator
  when "+"
    first_num + second_num
  when "-"
    first_num - second_num
  when "*"
    first_num * second_num
  when "/"
    first_num.to_f / second_num
  end
end
