class GameTurnLoop
  def self.play(board, player)
    game_over = false
    board.draw_board
    symbol = 'X'
      while !game_over
      #9.times do # don't want this to be 9, you want it to loop until game is over-try while loop
        selection = player.move
        board.spaces[selection] = symbol
        symbol = switch_symbols(symbol)
        board.draw_board
      end
  end

  def self.switch_symbols(symbol)
    if symbol == 'X'
      symbol = 'O'
    else
      symbol = 'X'
    end
  end

end
