def array_to_hash(array)
  hash = {}
  if block_given?
    array.each_with_index { |item, index| hash[yield(index)] = item }
  else
    array.each_with_index { |item, index| hash[index.to_s] = item }
  end
  hash
end

p array_to_hash(["Toto", "Titi", "Tata"])
# => {0=>"Toto", 1=>"Titi", 2=>"Tata"}
