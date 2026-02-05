class Show
    def show_board(board)
    # On crée une variable locale 'c' pour raccourcir le code
    # board.cases est le tableau de 9 objets BoardCase que tu as créé
    c = board.cases

    # On affiche la grille en allant piocher la .value de chaque objet
    puts "      1   2   3"
    puts "   A  #{c[0].value} | #{c[1].value} | #{c[2].value}"
    puts "     -----------"
    puts "   B  #{c[3].value} | #{c[4].value} | #{c[5].value}"
    puts "     -----------"
    puts "   C  #{c[6].value} | #{c[7].value} | #{c[8].value}"
    end
end