class GameTurnLoop
  def self.play(board, player, computer)
    @symbols = ['X', 'O']

    @p1 = []
    @p2 = []
    @game_over = false

    board.draw_board
      while !@game_over
        selection1 = player.move
        board.spaces[selection1] = symbol
        @p1 << selection1
        print @p1
        puts "\n"
        symbol = switch_symbols(symbol)
        board.draw_board unless game_ova(board) #board.winning_combo_found

        selection2 = player.move
        board.spaces[selection2] = symbol
        @p2 << selection2
        print @p2
        puts "\n"
        symbol = switch_symbols(symbol)
        board.draw_board unless game_ova(board)
      end
  end

  def self.get_symbol
   symbol = @symbols.shift
   @symbols.push(symbol)
  end
  
  def self.game_ova(board)
    if board.winning_combo_found == @p1
      puts "the game is up bro"
    else
      puts "keep going"
    end
  end

end

