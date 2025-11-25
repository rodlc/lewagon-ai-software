require 'open-uri'
require 'json'

def generate_grid(grid_size)
  Array.new(grid_size) { ('A'..'Z').to_a.sample }
end

def included?(attempt, grid)
  attempt.upcase.chars.all? { |letter| attempt.upcase.count(letter) <= grid.count(letter) }
end

def english_word?(word)
  response = URI.open("https://dictionary.lewagon.com/#{word}")
  json = JSON.parse(response.read)
  json['found']
end

def score_and_message(attempt, grid, time)
  if included?(attempt, grid)
    if english_word?(attempt)
      score = compute_score(attempt, time)
      [score, "Well done!"]
    else
      [0, "not an english word"]
    end
  else
    [0, "not in the grid"]
  end
end

def compute_score(attempt, time_taken)
  # Arbitrary scoring rule: lengths over time
  time_taken > 60.0 ? 0 : attempt.size * (1.0 - time_taken / 60.0)
end

def run_game(attempt, grid, start_time, end_time)
  result = { time: end_time - start_time }

  score, message = score_and_message(attempt, grid, result[:time])
  
  result[:score] = score
  result[:message] = message

  return result
end
