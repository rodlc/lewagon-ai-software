def louchebemize(sentence)
  vowels      = %w[a e i o u y]
  punctuation = [",", "!", "?", ".", ";", ":"]
  suffixes    = %w[em é ji oc ic uche ès]
  result      = []

  sentence.split.each do |word|
    tail = ''
    while punctuation.include?(word[-1])
      tail   = word[-1] + tail
      word   = word[0...-1]
    end

    if word.length <= 1
      result << word + tail
      next
    end

    letters = word.downcase.chars
    fv_idx  = letters.find_index { |l| vowels.include?(l) } || 0

    if fv_idx.zero?
      core = ["l", letters.join, suffixes.sample].join
    else
      start = letters[0...fv_idx].join
      rest  = letters[fv_idx..].join
      core  = ["l", rest, start, suffixes.sample].join
    end

    core[0] = core[0].upcase if word[0] =~ /[A-Z]/
    result << core + tail
  end

  result.join(' ')
end