class Game
  def self.play(board, human, computer)
    @symbols = ['X', 'O']
    @p1 = []
    @p2 = []
    @game_over = false

    board.draw_board
    while !@game_over
      human_move = human.move
      board.spaces[human_move] = get_symbol
      @p1 << human_move
      board.draw_board unless game_loop(board)
      break if @game_over
      computer_move = computer.move(board, @p1, @p2)
      board.spaces[computer_move] = get_symbol
      @p2 << computer_move
      board.draw_board unless game_loop(board)
    end
  end

  def self.get_symbol
    symbol = @symbols.shift
    @symbols << symbol
    return symbol
  end
  
  def self.game_loop(board)
    if board.winning_combo_found(@p1, @p2) == "winner"
      puts "there's a winner!"
      @game_over = true
    elsif board.winning_combo_found(@p1, @p2) == nil
      @game_over = false
    elsif board.winning_combo_found(@p1, @p2) == "tie"
      puts "there is not a winner"
      @game_over = true
    end
  end

end

