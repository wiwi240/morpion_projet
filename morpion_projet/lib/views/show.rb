class Show
  def show_board(board)
    c = board.cases
    # Petit hack pour mettre de la couleur sur les symboles
    v = c.map { |bc| bc.value == "X" ? bc.value.red : (bc.value == "O" ? bc.value.blue : bc.value) }

    puts "      1   2   3"
    puts "   A  #{v[0]} | #{v[1]} | #{v[2]}"
    puts "     -----------"
    puts "   B  #{v[3]} | #{v[4]} | #{v[5]}"
    puts "     -----------"
    puts "   C  #{v[6]} | #{v[7]} | #{v[8]}"
  end
end