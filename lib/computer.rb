class Computer
  # def move(board, human, computer)
  #   if optimal_move(board, human, computer) == false
  #     blocking_move(board, human)
  #   elsif blocking_move(board, human) == false
  #     random_move(board, 9)
  #   else
  #     puts "cat's game"
  #   end
  # end


  def move(board, human, computer)
    if optimal_move(board, human, computer) == false
      board.spaces.each do |space, symbol|
        puts "It's the computer's turn..."
        random_smart_move(board, symbol)
        break
      end
    end
  end

  def empty_spaces(board, emptiness)
    
  end

  # def inbetween_move(board, computer)
  #   optimal_move(board, human, computer) == false && blocking_move(board, human) == false
  #   Board::WINNING_COMBOS.each do |combo|
  #     difference = combo - computer
  #     if difference.length == 2
  #       move = difference[1]
  #       if board.available_space?(move)
  #         return move
  #       end
  #     end
  #   end
  # end

  def random_smart_move(board, symbol)
    array = [1, 3, 5, 7, 9]
    symbol = array.sample 
    board.spaces[symbol] = 'O'
    return symbol if board.available_space?(symbol) 
  end

  def competitive_move(board, computer)
 
  end

  def random_move(board, space)
    board.spaces[space] = 'O'
    puts "Tile #{space} was chosen by the computer."
  end

  def optimal_move(board, human, computer)
    winning = winning_move(board, computer)
    optimal = winning
    blocking = blocking_move(board, human)
    #in_process_of_winning ||= optimal
    optimal ||= blocking

    if optimal != false
      random_move(board, optimal)
    #elsif blocking == false
      #random_move(board, optimal)
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
