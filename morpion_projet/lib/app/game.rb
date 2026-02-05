class Game
  def initialize
    @board = Board.new
    puts "Nom du Joueur 1 (X) :"
    @p1 = Player.new(gets.chomp, "X")
    puts "Nom du Joueur 2 (O) :"
    @p2 = Player.new(gets.chomp, "O")
    @players = [@p1, @p2]
  end

  def turn
    Show.new.show_board(@board)
    current_player = @players[0]
    
    puts "C'est à #{current_player.name} de jouer."
    choice = ""
    loop do
      print "Choisis une case (A1..C3) : "
      choice = gets.chomp.upcase
      # Vérification si la case existe et est vide
      case_to_check = @board.cases.find { |c| c.position == choice }
      break if case_to_check && case_to_check.value == " "
      puts "Case invalide ou occupée !"
    end

    @board.play_turn(choice, current_player.symbol)
    @players.rotate!
  end

  def game_over?
    @board.victory? || @board.full?
  end

  def conclude
    Show.new.show_board(@board)
    if @board.victory?
      puts "Félicitations #{@players[1].name}, tu as gagné !"
    else
      puts "Match nul !"
    end
  end
end