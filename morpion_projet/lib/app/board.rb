class Board
  attr_accessor :cases

  def initialize
    @cases = []
    # Création des 9 cases
    ["A", "B", "C"].each do |letter|
      (1..3).each do |number|
        @cases << BoardCase.new("#{letter}#{number}")
      end
    end
  end

  def play_turn(position, symbol)
    target = @cases.find { |c| c.position == position }
    target.value = symbol if target
  end

  def victory?
    # Les 8 combinaisons gagnantes
    wins = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    wins.any? do |w|
      @cases[w[0]].value != " " && 
      @cases[w[0]].value == @cases[w[1]].value && 
      @cases[w[1]].value == @cases[w[2]].value
    end
  end

  def full?
    @cases.all? { |c| c.value != " " }
  end
end