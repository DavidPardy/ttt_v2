$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'game_turn_loop'
require 'board'
require 'player'
require 'computer'

board = Board.new
player = Player.new
computer = Computer.new
GameTurnLoop.play(board, player, computer)
