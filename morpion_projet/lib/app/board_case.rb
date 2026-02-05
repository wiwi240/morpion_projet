# Définit une classe représentant une case unique sur le plateau de jeu
class BoardCase
  # Permet la lecture et l'écriture de la valeur de la case (X, O ou vide) et de sa position
  attr_accessor :value, :position
  
  # Initialise une nouvelle case avec une position spécifique et une valeur par défaut vide
  def initialize(position)
    # Stocke la coordonnée de la grille (ex: "A1", "B2")
    @position = position 
    # Définit l'état initial de la case avec un caractère d'espace
    @value = " "
  end
end