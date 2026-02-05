# Définit la classe Board qui gère l'état global du plateau de jeu
class Board
  # Permet d'accéder au tableau contenant les objets BoardCase
  attr_accessor :cases

  # Initialisation du plateau lors de la création d'une nouvelle instance
  def initialize
    # Initialise un tableau vide pour stocker les 9 cases
    @cases = []
    
    # Itère sur les lettres A, B, C pour les lignes
    ["A", "B", "C"].each do |letter|
      # Itère sur les chiffres 1, 2, 3 pour les colonnes
      (1..3).each do |number|
        # Instancie une nouvelle BoardCase avec sa coordonnée (ex: "A1") et l'ajoute au tableau
        @cases << BoardCase.new("#{letter}#{number}")
      end
    end
  end

  # Modifie la valeur d'une case spécifique lors d'un tour de jeu
  def play_turn(position, symbol)
    # Cherche l'objet BoardCase dont la position correspond à l'entrée
    target = @cases.find { |c| c.position == position }
    # Si la case est trouvée, lui assigne le symbole du joueur (X ou O)
    target.value = symbol if target
  end

  # Vérifie si l'un des joueurs a gagné la partie
  def victory?
    # Liste des index du tableau @cases correspondant aux 8 lignes, colonnes et diagonales gagnantes
    wins = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    # Vérifie si au moins une des combinaisons gagnantes est remplie par le même symbole
    wins.any? do |w|
      # Vérifie que la case n'est pas vide ET que les trois cases de la combinaison sont identiques
      @cases[w[0]].value != " " && 
      @cases[w[0]].value == @cases[w[1]].value && 
      @cases[w[1]].value == @cases[w[2]].value
    end
  end

  # Vérifie si le plateau est plein (pour déterminer un match nul)
  def full?
    # Renvoie vrai si aucune case ne contient un espace vide
    @cases.all? { |c| c.value != " " }
  end
end