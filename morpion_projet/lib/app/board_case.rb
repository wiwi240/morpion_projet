class BoardCase
  attr_accessor :value, :position
  
  def initialize(position)
    @position = position # ex: "A1"
    @value = " "
  end
end