class Movie
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

class NetflixAccount
  attr_reader :username
  attr_reader :my_list
  attr_reader :recently_watched

  def initialize(username)
    @username = username
    @my_list = []
    @recently_watched = []
    puts "User: <" + username + "> has been created."
  end

  def add_to_my_list(movie)
    if movie.class == Movie
        print movie.title.to_s + " added to your list.\n"
        @my_list.push(movie)
    end
  end

  def remove_from_my_list(movie)
    if (movie.class == Movie) && (@my_list.include?(movie)) 
        print movie.title.to_s + " removed from your list.\n"
        @my_list.delete(movie)
    end
  end

  def watch(movie)
    if movie.class == Movie
        puts "Now watching: " + movie.title.to_s
    end
  end
end

movies = [
  Movie.new("Seven Samurai"), 
  Movie.new("Wall Street"), 
  Movie.new("Big Hero 6")
]

account = NetflixAccount.new("user123")
account.watch(movies[0])
account.add_to_my_list(movies[1])
account.add_to_my_list(movies[2])
account.remove_from_my_list(movies[2])
