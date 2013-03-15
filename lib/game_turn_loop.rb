class GameTurnLoop
  def self.play(board, player, computer)
    @symbols = ['X', 'O']
    @p1 = []
    @p2 = []
    @game_over = false

    board.draw_board
    while !@game_over
      selection1 = player.move
      board.spaces[selection1] = get_symbol
      @p1 << selection1
      puts "#{@p1} \n"
      board.draw_board unless game_ova(board)

      selection2 = player.move
      board.spaces[selection2] = get_symbol
      @p2 << selection2
      puts "#{@p2} \n"
      board.draw_board unless game_ova(board)
    end
  end

  def self.get_symbol
   symbol = @symbols.shift
   @symbols.push(symbol)
   return symbol
  end
  
  def self.game_ova(board)
    if board.winning_combo_found(@p1, @p2) == "human_winner"
      puts "human player wins"
      @game_over = true
    elsif board.winning_combo_found(@p1, @p2) == "computer_winner"
      puts "computer player wins"
      @game_over
    else
      puts "no one wins"
    end
  end

end

