class Computer
  def move(board, human, computer)
    optimal = optimal_move(board, human, computer)
      puts "It's the computer's turn..."
    if optimal == false
      chosen_move = random_smart_move(board)
    else
      chosen_move = optimal
    end
    chosen_move
  end

  def random_smart_move(board)
    available = nil
    if board.available_space?(5)
      available = 5
    else
      [1, 3, 7, 9].shuffle.each do |n|
        symbol = n
        available = symbol if board.available_space?(n)
        break if available
      end
    end
    return available || filler_move(board)
  end

  def competitive_move(board, computer)
  
  end

  def filler_move(board)
    available = nil
    [2, 4, 6, 8].shuffle.each do |n|
      symbol = n
      available = symbol if board.available_space?(n)
      break if available
    end
    return available
  end

  def optimal_move(board, human, computer)
    winning = winning_move(board, computer)
    chosen_move = winning
    blocking = blocking_move(board, human)

    chosen_move ||= blocking
    if chosen_move != false
      return chosen_move
    else
      return false
    end
  end

  def winning_move(board, computer)
    Board::WINNING_COMBOS.each do |combo|
      difference = combo - computer
      if difference.length == 1
        move = difference.first
        if board.available_space?(move)
          return move
        end
      end
    end
    return false
  end

  def blocking_move(board, human)
    Board::WINNING_COMBOS.each do |combo|
      difference = combo - human
      if difference.length == 1
        move = difference.first
        if board.available_space?(move)
          sleep(1)
          return move
        end
      end
    end
    return false
  end

end
