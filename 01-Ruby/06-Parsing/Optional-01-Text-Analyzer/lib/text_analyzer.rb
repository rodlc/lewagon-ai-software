def analyze(text)
  # We calculate the base counts first
  counts = compute_counts(text)

  # We calculate averages based on those counts
  # Note: We use .merge to combine the two hashes into one result
  return counts.merge(compute_averages(counts))
end

# This method is 'private' because it's only used internally by analyze
def compute_counts(text)
  {
    character_count: text.length,
    character_count_excluding_spaces: text.delete(" ").length,
    line_count: text.lines.count,
    word_count: text.split.count,
    sentence_count: text.split(/[.?!]/).count,
    paragraph_count: text.split("\n\n").count
  }
end

def compute_averages(counts)
  {
    average_words_per_sentence: counts[:word_count].to_f / counts[:sentence_count],
    average_sentences_per_paragraph: counts[:sentence_count].to_f / counts[:paragraph_count]
  }
end
