require 'active_record'

class AddArtistIdToTracks < ActiveRecord::Migration[7.1]
  def change
    add_column :tracks, :artist_id, :integer
    # Optionnellement, vous pouvez ajouter un index pour améliorer les performances des requêtes
    add_index :tracks, :artist_id
  end
end
