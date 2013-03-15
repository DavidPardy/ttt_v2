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
        board.draw_board unless game_ova(board) #board.winning_combo_found

        selection2 = player.move
        board.spaces[selection2] = symbol
        p2 ||= []
        p2 << selection2
        print p2
        puts "\n"
        symbol = switch_symbols(symbol)
        board.draw_board unless game_ova(board)
      end
  end

  def self.switch_symbols(symbol)
    if symbol == 'X'
      symbol = 'O'
    else
      symbol = 'X'
    end
  end
  
  def self.game_ova(board)
    if board.winning_combo_found.any?
      puts "the game is up bro"
    else
      puts "keep going"
    end
  end

end

