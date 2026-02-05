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
    # Liste des index du tableau @cases correspondant aux