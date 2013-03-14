class GameTurnLoop
  def self.play(board, player)
    game_over = false
    #winning_combo_found = false
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
        board.draw_board unless game_ova #board.winning_combo_found

        selection2 = player.move
        board.spaces[selection2] = symbol
        p2 ||= []
        p2 << selection2
        print p2
        puts "\n"
        symbol = switch_symbols(symbol)
        board.draw_board unless game_ova
      end
  end

  def self.switch_symbols(symbol)
    if symbol == 'X'
      symbol = 'O'
    else
      symbol = 'X'
    end
  end

  def self.winning_combo_found
    
    [1, 4, 7] || [2, 5, 8] || [3, 6, 9] || [1, 2, 3] || [4, 5, 6] || [7, 8, 9] || [1, 5, 9] || [3, 5, 7]
    #winning combos should just return true or false
    #if columns == true
     # "FUCK FUCK FUCK"
    #end
  end

  def self.game_ova
    if winning_combo_found == true
      puts "the game is up bro"
    else
      puts "keep going"
    end
  end

end

