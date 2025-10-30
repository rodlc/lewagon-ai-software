require 'active_record'

def reversed_sorted_artists
  # TODO: return an ActiveRecord::Relation (array) of Artist, in reversed alphabetical order
  Artist.order(name: :desc)
end

def love_tracks
  # TODO: return an ActiveRecord::Relation (array) of Track which sings about Love
  Track.where("name LIKE ?", '%love%')
end

def long_tracks(min_length)
  # TODO: return an ActiveRecord::Relation (array) of Track of at least `min_length` minutes
  Track.where("milliseconds > ?", (min_length * 60 * 1000).to_s)
end

def top_five_artists(genre_name)
  Artist
    .joins(tracks: :genre)
    .where(genres: { name: genre_name })
    .select('artists.*, COUNT(tracks.id) AS tracks_count')
    .group('artists.id')
    .order('tracks_count DESC')
    .limit(5)
end
