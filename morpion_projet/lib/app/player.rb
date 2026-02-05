# Définit la classe Player représentant un participant à la partie
class Player
  # Autorise la lecture des attributs nom et symbole (X ou O) depuis l'extérieur de la classe
  attr_reader :name, :symbol

  # Initialise un nouveau joueur avec son identifiant et son signe distinctif
  def initialize(name, symbol)
    # Assigne le nom fourni à l'instance du joueur
    @name = name
    # Assigne le symbole (X ou O) à l'instance du joueur
    @symbol = symbol
  end
end