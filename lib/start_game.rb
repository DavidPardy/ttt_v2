$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'game_turn_loop'
require 'board'
require 'player'

board = Board.new
player = Player.new
GameTurnLoop.play(board, player)
