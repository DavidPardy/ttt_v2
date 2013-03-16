$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'game'
require 'board'
require 'player'
require 'computer'

board = Board.new
player = Player.new
computer = Computer.new
Game.play(board, player, computer)
