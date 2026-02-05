# Définit la classe principale Game qui orchestre le déroulement de la partie
class Game
  # Initialise une nouvelle partie : crée le plateau et les deux joueurs
  def initialize
    # Instancie un nouveau plateau de jeu
    @board = Board.new
    # Demande et récupère le nom du premier joueur
    puts "Nom du Joueur 1 (X) :"
    @p1 = Player.new(gets.chomp, "X")
    # Demande et récupère le nom du second joueur
    puts "Nom du Joueur 2 (O) :"
    @p2 = Player.new(gets.chomp, "O")
    # Stocke les deux joueurs dans un tableau pour gérer l'alternance
    @players = [@p1, @p2]
  end

  # Gère le déroulement d'un tour de jeu individuel
  def turn
    # Affiche l'état actuel du plateau via la classe Show
    Show.new.show_board(@board)
    # Définit le joueur actif (toujours celui à l'index 0 du tableau)
    current_player = @players[0]
    
    puts "C'est à #{current_player.name} de jouer."
    choice = ""
    # Boucle de contrôle pour garantir une saisie valide de l'utilisateur
    loop do
      print "Choisis une case (A1..C3) : "
      choice = gets.chomp.upcase
      # Cherche l'objet case correspondant à la saisie dans le plateau
      case_to_check = @board.cases.find { |c| c.position == choice }
      # Sort de la boucle si la case existe et n'a pas encore été cochée
      break if case_to_check && case_to_check.value == " "
      puts "Case invalide ou occupée !"
    end

    # Enregistre le coup sur le plateau avec le symbole du joueur actuel
    @board.play_turn(choice, current_player.symbol)
    # Alterne l'ordre des joueurs dans le tableau pour le prochain tour
    @players.rotate!
  end

  # Vérifie si la partie doit s'arrêter (victoire ou plateau complet)
  def game_over?
    @board.victory? || @board.full?
  end

  # Gère l'affichage final et l'annonce du résultat une fois la partie terminée
  def conclude
    # Affiche le plateau final
    Show.new.show_board(@board)
    # Si la condition de victoire est remplie, annonce le vainqueur
    # (Note: @players[1] est utilisé car rotate! a déjà déplacé le gagnant en fin de tableau)
    if @board.victory?
      puts "Félicitations #{@players[1].name}, tu as gagné !"
    else
      # Si aucune victoire mais partie finie, c'est un match nul
      puts "Match nul !"
    end
  end
end