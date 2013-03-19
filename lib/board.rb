class Board
  attr_reader :spaces

  WINNING_COMBOS = [[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @spaces = { 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }
  end

  def draw_board
    puts "David Pardy's Tic Tac Toe Game for 8th Light
    -----------
    [#{@spaces[1]}]|[#{@spaces[2]}]|[#{@spaces[3]}]
    -----------
    [#{@spaces[4]}]|[#{@spaces[5]}]|[#{@spaces[6]}]
    -----------     
    [#{@spaces[7]}]|[#{@spaces[8]}]|[#{@spaces[9]}]
    -----------"
  end

  def winning_combo_found(human_human, computer_human)
    human_winner = WINNING_COMBOS.select { |combo| combo == human_human}.any?
    computer_winner = WINNING_COMBOS.select { |combo| combo == computer_human}.any?
    return "human_winner" if human_winner
    return "computer_winner" if computer_winner
    return false
  end

  def available_space?(space)
    return true if @spaces[space] == space.to_s
  end

end
