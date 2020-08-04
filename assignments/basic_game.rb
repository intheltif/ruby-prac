class Player
    def initialize(name)
        @name = name
    end

    def desc()
        print @name
    end
end

class Game
    def initialize(name, *players)
        @name = name
        @players = players
    end
    
    def add_player(player)
        if player.class == Player
            @players.push(player)
        else
            print "Incorrect type: (#{player}) Item was not added to the list of players.\n"
        end
    end

    def list_players()
        puts "Player list: "
        for player in @players
            print "\t"
            print player.desc
            print "\n"
        end
    end
end

game = Game.new("RPS")

players = [
  Player.new("John"), 
  Player.new("Lizzy"), 
  Player.new("Clair"), 
  Player.new("Brad"), 
  15
]

players.each { |player| game.add_player(player) }

game.list_players
