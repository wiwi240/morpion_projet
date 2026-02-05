class Game
    attr_accessor :players, :board 

    def initialize
    puts "Bienvenue dans le jeu du morpion !"
    
    puts "Joueur 1, entrez votre nom : "
    # On appelle la classe Player (sans le 1)
    @player1 = Player.new(gets.chomp, "X")
    
    puts "Joueur 2, entrez votre nom : "
    # On appelle encore la classe Player (sans le 2)
    @player2 = Player.new(gets.chomp, "O")
    
    @board = Board.new
    
    # On range les deux objets dans une variable d'instance @
    @players = [@player1, @player2]
    end
end