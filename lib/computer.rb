class Computer
  def move(board, human, computer)
    optimal = optimal_move(board, human, computer)
      #sleep(1)
      puts "It's the computer's turn..."
    if optimal == false
      #sleep(3)
      chosen_move = random_smart_move(board, human, computer)
    else
      #sleep(3)
      chosen_move = optimal
    end
    chosen_move
  end

  def random_smart_move(board, human, computer)
    available = nil
    if board.available_space?(5)
      available = 5
    else
      [1, 3, 7, 9].shuffle.each do |symbol|
        available = symbol if board.available_space?(symbol)
        break if available
      end
    end
    return available
  end

  def competitive_move(board, human, computer)
    return false if computer.empty?
    Board::WINNING_COMBOS.each do |combo|
      if !combo.include?(human.first) && combo.include?(computer.first)
        move = (combo - [human.first]).drop(1).sample
        return move if board.available_space?(move)
      elsif combo.include?(human.last) && !combo.include?(computer.first)
        move = (combo - [human.last]).sample
        return move if board.available_space?(move)
      end
    end
  end

  def optimal_move(board, human, computer)
    move = winning_move(board, computer)
    move ||= blocking_move(board, human) || move ||= competitive_move(board, human, computer)
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
          return move
        end
      end
    end
    return false
  end

end
