require 'csv'
require 'date'

def most_successful(number, max_year, file_path)
  # TODO: return an array of most successful movies before `max_year`
  movies_selection = []
  movies_sorted = []
  CSV.foreach(file_path) do |row|
    unless row[1].to_i >= max_year
      movie = {}
      movie[:name] = row[0]
      movie[:year] = row[1].to_i
      movie[:earnings] = row[2].to_i
      movies_selection << movie
    end
  end
  puts movies_sorted
  movies_sorted = movies_selection.sort_by { |movie| movie[:earnings] }.reverse
  movies_sorted[0..(number - 1)]
end

puts most_successful(6, 1975, "./lib/movies.csv")
