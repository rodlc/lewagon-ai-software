def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  array_in = []
  array_out = []
  array.each do |word|
    word.length == size ? array_in << word : array_out << word
  end
  [array_in.sort, array_out.sort]
end

puts size_splitter(["z", "a", "bb", "cc", "aa", "abc"], 2)

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  array_in = []
  array_out = []
  array.each do |word|
    yield(word) ? array_in << word : array_out << word
  end
  [array_in, array_out]
end
