$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'game'
require 'board'
require 'human'
require 'computer'

board = Board.new
human = Human.new
computer = Computer.new

Game.play(board, human, computer)
