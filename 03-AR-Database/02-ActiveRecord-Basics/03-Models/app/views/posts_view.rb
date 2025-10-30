class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  # TODO: Define your View class here, to display elements to the user and ask them for their input

  def display_list(posts)
    if posts.empty?
      puts "No posts in your system for the moment."
    else
      posts.each do |post|
        puts "#{post.id} - #{post.title} - #{post.url} - #{post.votes}"
      end
    end
  end

  def ask_for(stuff)
    puts "What is #{stuff}?"
    print "> "
    gets.chomp
  end
end
