gem 'activerecord', '~> 7.1.3.2'
gem 'sqlite3', '~> 1.7.3'
# ^ DO NOT CHANGE! This makes sure your system uses the correct versions of activerecord and sqlite3

require "sqlite3"
JUKEBOX = SQLite3::Database.new(File.join(File.dirname(__FILE__), 'db/jukebox.sqlite'))

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.
  db.execute("SELECT COUNT(*) FROM artists")[0][0]
 # Puis tu auras besoin de retourner quelque chose.
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.
  db.execute("SELECT COUNT(*) FROM #{table_name}")[0][0]
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.
  db.execute("SELECT name FROM artists ORDER BY name").flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).
  db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'").flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.
  sql_query = "SELECT name FROM tracks WHERE milliseconds > ? ORDER BY milliseconds"
  min_length_milliseconds = min_length * 60 * 1000
  db.execute(sql_query, min_length_milliseconds).flatten
end

def albums_per_artist(db)
  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
  db.execute("SELECT artists.name, COUNT(*) FROM albums LEFT JOIN artists ON albums.artist_id = artists.id GROUP BY artists.name")
end
