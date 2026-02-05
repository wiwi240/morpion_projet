# Définit la classe Show responsable de l'affichage de l'interface dans le terminal
class Show
  # Affiche visuellement le plateau de jeu à partir de l'objet board fourni
  def show_board(board)
    # Récupère le tableau d'objets BoardCase du plateau
    c = board.cases
    
    # Transforme les valeurs pour l'affichage : applique une couleur selon le symbole
    # Utilise l'extension .red pour les "X" et .blue pour les "O"
    v = c.map { |bc| bc.value == "X" ? bc.value.red : (bc.value == "O" ? bc.value.blue : bc.value) }

    # Affiche les numéros de colonnes (1, 2, 3) pour guider l'utilisateur
    puts "      1   2   3"
    
    # Affiche la ligne A avec les valeurs formatées des index 0, 1 et 2
    puts "   A  #{v[0]} | #{v[1]} | #{v[2]}"
    # Affiche une ligne de séparation horizontale
    puts "     -----------"
    
    # Affiche la ligne B avec les valeurs formatées des index 3, 4 et 5
    puts "   B  #{v[3]} | #{v[4]} | #{v[5]}"
    # Affiche une ligne de séparation horizontale
    puts "     -----------"
    
    # Affiche la ligne C avec les valeurs formatées des index 6, 7 et 8
    puts "   C  #{v[6]} | #{v[7]} | #{v[8]}"
  end
end