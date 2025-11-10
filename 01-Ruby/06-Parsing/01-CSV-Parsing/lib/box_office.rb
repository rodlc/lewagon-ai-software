require "csv"

def most_successful(limit, max_year, file_path)
  movies = CSV.foreach(file_path).with_object([]) do |(name, year, earnings), list|
    next if year.to_i >= max_year

    list << { name: name,
              year: year.to_i,
              earnings: earnings.to_i }
  end

  movies.max_by(limit) { |m| m[:earnings] } # top-N sans trier tout le tableau
end
