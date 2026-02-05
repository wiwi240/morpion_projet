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
    def turn
        # 1. On affiche le plateau en utilisant la classe Show
        # C'est ici que tu appelles ton travail précédent !
        @show.show_board(@board)

        # 2. On détermine qui est le joueur actif
        current_player = @players[0] 
        puts "C'est au tour de #{current_player.name} (#{current_player.symbol})"

        # 3. On demande au joueur quelle case il veut jouer
        puts "Quelle case choisis-tu ? (ex: A1, B2...)"
        choice = gets.chomp

        # 4. On demande au Board de modifier la case choisie
        # (Il faudra créer cette méthode 'play_turn' dans ton Board)
        @board.play_turn(choice, current_player.symbol)

        # 5. On change l'ordre des joueurs pour le prochain tour
        @players.rotate!
    end
end