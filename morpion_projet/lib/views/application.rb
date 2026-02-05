# Définit la classe Application qui sert de point d'entrée et contrôle la boucle principale du programme
class Application
  # Lance l'exécution globale de l'application
  def perform
    # Démarre une boucle infinie pour permettre de rejouer plusieurs parties
    loop do
      # Instancie une nouvelle partie (initialise le plateau et les joueurs)
      game = Game.new
      
      # Continue de faire tourner la partie tant que les conditions de fin ne sont pas remplies
      while !game.game_over?
        # Exécute un tour de jeu (affichage, saisie, mise à jour du plateau)
        game.turn
      end
      
      # Affiche le résultat final une fois la partie terminée (victoire ou nul)
      game.conclude

      # Demande à l'utilisateur s'il souhaite relancer une nouvelle session de jeu
      puts "Voulez-vous rejouer ? (Y/N)"
      
      # Interrompt la boucle principale si la réponse saisie est différente de "Y"
      break if gets.chomp.upcase != "Y"
    end
    
    # Message de clôture affiché lors de la sortie définitive du programme
    puts "Merci d'avoir joué !"
  end
end