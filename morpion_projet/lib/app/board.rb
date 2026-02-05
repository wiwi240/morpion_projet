require 'bundler'
Bundler.require

require_relative 'lib/board_case'

class Board
    attr_accessor :cases
    def initialize 
        @cases = [
            BoardCase.new("A1"), BoardCase.new("A2"), BoardCase.new("A3"),
            BoardCase.new("B1"), BoardCase.new("B2"), BoardCase.new("B3"),
            BoardCase.new("C1"), BoardCase.new("C2"), BoardCase.new("C3")
        ]
    end
end