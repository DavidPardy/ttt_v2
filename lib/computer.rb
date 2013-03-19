class Computer
  def move(board, human, computer)
    if optimal_move(board, human, computer) == false
      board.spaces.each do |space, symbol|
        if symbol != 'X' && symbol != 'O'
          puts "It's the computer's turn..."
          sleep(1)
          random_move(board, space)
          break
        end
      end
    end
  end

  def random_move(board, space)
    board.spaces[space] = 'O'
    puts "Tile #{space} was chosen by the computer human."
  end

  def optimal_move(board, human, computer)
    winning = winning_move(board, computer)
    optimal = winning

    blocking = blocking_move(board, human)
    optimal ||= blocking

    if optimal != false
      random_move(board, optimal)
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
