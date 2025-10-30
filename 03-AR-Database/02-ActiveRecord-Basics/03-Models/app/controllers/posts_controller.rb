require_relative "../views/posts_view"
require_relative "../models/post"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    posts = Post.all
    @view.display_list(posts)
  end

  def create
    title = @view.ask_for("the title of the post")
    url = @view.ask_for("the URL of the post")

    Post.create(title: title, url: url, votes: 0) # Utilise la méthode .create d'ActiveRecord
    @view.display_message("Post created successfully!")
  end

  def update
    # Demande directement l'ID du post à mettre à jour.
    id = @view.ask_for("the ID of the post to edit").to_i
    post = Post.find_by(id: id) # Utilise find_by pour une recherche plus flexible

    if post
      new_title = @view.ask_for("the new title for the post (leave empty to keep current: #{post.title})")
      new_url = @view.ask_for("the new URL for the post (leave empty to keep current: #{post.url})")

      post.title = new_title unless new_title.empty?
      post.url = new_url unless new_url.empty?
      post.save # Sauvegarde les modifications
      @view.display_message("Post updated successfully!")
    else
      @view.display_message("Post with ID #{id} not found.")
    end
  end

  def destroy
    # Demande directement l'ID du post à supprimer.
    id = @view.ask_for("the ID of the post to delete").to_i
    post = Post.find_by(id: id)

    if post
      post.destroy # Supprime le post
      @view.display_message("Post with ID #{id} deleted successfully!")
    else
      @view.display_message("Post with ID #{id} not found.")
    end
  end

  def upvote
    # Demande directement l'ID du post à upvoter.
    id = @view.ask_for("the ID of the post to upvote").to_i
    post = Post.find_by(id: id)

    if post
      post.increment!(:votes) # Méthode d'ActiveRecord pour incrémenter et sauvegarder
      @view.display_message("Post with ID #{id} upvoted! Current votes: #{post.votes}")
    else
      @view.display_message("Post with ID #{id} not found.")
    end
  end
end
