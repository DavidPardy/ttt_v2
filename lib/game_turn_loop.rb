class GameTurnLoop
  def self.play(board, player)
    game_over = false
    board.draw_board
    symbol = 'X'
      while !game_over
      #9.times do # don't want this to be 9, you want it to loop until game is over-try while loop
        selection1 = player.move
        board.spaces[selection1] = symbol
        p1 ||= []
        p1 << selection1
        print p1
        puts "\n"
        symbol = switch_symbols(symbol)
        board.draw_board unless winning_combos

        selection2 = player.move
        board.spaces[selection2] = symbol
        p2 ||= []
        p2 << selection2
        print p2
        puts "\n"
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

