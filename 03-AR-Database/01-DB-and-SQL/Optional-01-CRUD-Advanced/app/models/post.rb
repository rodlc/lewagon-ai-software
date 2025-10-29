# You can use a global variable, DB, which is an instance of SQLite3::Database
# No need to create it, you can just use it!

require_relative "../../test"

class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    # TODO
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    DB.results_as_hash = true
    # TODO : Ecrire la requête SQL pour obtenir le post avec l'id donné
    # TODO : Utiliser DB.execute pour exécuter la requête SQL
    # TODO : Retourner l'article trouvé - en tant qu'instance d'un article !

    query = "SELECT * FROM posts WHERE id = ?"
    post = DB.execute(query, id)[0]
    if post.nil?
      nil
    else
      Post.new({ id: post[0], title: post[1], url: post[2], votes: post[3] })
    end
  end

  def self.all
    DB.results_as_hash = true
    # TODO : Ecrire la requête SQL pour récupérer tous les posts de la base de données
    # TODO : Utiliser DB.execute pour exécuter la requête SQL
    # TODO : Retourner un tableau de tous les billets - tous en tant qu'instances de billets !

    query = "SELECT * FROM posts"
    posts = DB.execute(query)
    if posts.nil?
      return []
    else
      posts.map! { |post| Post.new({ id: post[0], title: post[1], url: post[2], votes: post[3] }) }
    end
  end

  def destroy
    DB.results_as_hash = true
    # TODO : Ecrire la requête SQL pour supprimer un message spécifique de la base de données
    # TODO : Utiliser DB.execute pour exécuter la requête SQL

    query = "DELETE FROM posts WHERE id = ?"
    post = DB.execute(query, id)
  end

  def save
    DB.results_as_hash = true
    # TODO : Déterminer si l'article doit être *créé* ou *mis à jour*
    # TODO : Si l'article existe déjà :
    # TODO : Ecrire la requête SQL pour mettre à jour l'article dans la base de données
    # TODO : Utiliser DB.execute pour exécuter la requête
    # TODO : Si l'article est nouveau,
    # TODO : Ecrire la requête SQL pour ajouter un nouvel article dans la base de données
    # TODO : Utiliser DB.execute pour exécuter la requête
    # TODO : Mettre à jour l'@id de l'article en utilisant les données de la base de données

    if @id # Si l'ID existe, c'est une mise à jour (UPDATE)
      query = "UPDATE posts SET title = ?, url = ?, votes = ? WHERE id = ?"
      DB.execute(query, @title, @url, @votes, @id) # Passer les valeurs comme arguments séparés
    else # Sinon, c'est une nouvelle création (INSERT)
      query = "INSERT INTO posts (title, url, votes) VALUES (?, ?, ?)"
      DB.execute(query, @title, @url, @votes) # Passer les valeurs comme arguments séparés
      # Récupérer l'ID généré par la base de données pour ce nouvel enregistrement
      @id = DB.last_insert_row_id
    end
  end
end
