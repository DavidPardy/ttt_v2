class Board
  attr_reader :spaces

  WINNING_COMBOS = [[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @spaces = { 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }
  end

  def draw_board
    system('clear')
    puts "David Pardy's Tic Tac Toe Game. Please wait until prompted to enter a move:
    -----------
    [#{@spaces[1]}]|[#{@spaces[2]}]|[#{@spaces[3]}]
    -----------
    [#{@spaces[4]}]|[#{@spaces[5]}]|[#{@spaces[6]}]
    -----------     
    [#{@spaces[7]}]|[#{@spaces[8]}]|[#{@spaces[9]}]
    -----------"
  end

  def winning_combo_found(human, computer)
    winner = WINNING_COMBOS.select { |combo| (human & combo).sort == combo || (computer & combo).sort == combo }
    return "winner" if winner.any?
    tie = human.length == 5 && computer.length == 4
    return "tie" if tie == true
  end

  def available_space?(space)
    @spaces[space] != 'X' && @spaces[space] != 'O'
  end

end

