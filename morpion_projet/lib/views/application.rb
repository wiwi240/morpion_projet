class Application
  def perform
    loop do
      game = Game.new
      while !game.game_over?
        game.turn
      end
      game.conclude

      puts "Voulez-vous rejouer ? (Y/N)"
      break if gets.chomp.upcase != "Y"
    end
    puts "Merci d'avoir joué !"
  end
end