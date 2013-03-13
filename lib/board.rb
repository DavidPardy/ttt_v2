class Board
  attr_reader :spaces

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

  def computer_move
    if @spaces[5] == "5"
      puts "It's the computer's turn..."
      sleep(2)
      make_a_move(5, @computer)
      puts "The computer player selected the middle spot."
    else
      @spaces.each do |spots, x_or_o|
        if x_or_o != 'X' && x_or_o != 'O'
          puts "It's the computer's turn..."
          sleep(2)
          make_a_move(spots.to_i, @computer)
          break
        end
      end
    end   
  end

  # def play
  #   9.times do
  #     if @turn == @human
  #       human_prompt
  #       draw_board
  #       @turn = @computer
  #     else
  #       computer_move
  #       draw_board
  #       @turn = @human
  #     end
  #   end
  # end
  
  def make_a_move(space, tile_choice)
    @spaces[space] = tile_choice
    puts "Tile #{space} was chosen!"
    @computer_selection[@computer]
    puts "Mr. Computer, you've chose these values so far: #{@computer_selection}"
  end

  def human_winner(space, tile_choice)
    @spaces[space] = tile_choice
    if @human_selection =
      [ @spaces[1], @spaces[2], @spaces[3] ] ||
      [ @spaces[4], @spaces[5], @spaces[6] ] ||
      [ @spaces[7], @spaces[8], @spaces[9] ] ||
      [ @spaces[1], @spaces[4], @spaces[7] ] ||
      [ @spaces[2], @spaces[5], @spaces[8] ] ||
      [ @spaces[3], @spaces[6], @spaces[9] ] ||
      [ @spaces[1], @spaces[5], @spaces[9] ] ||
      [ @spaces[3], @spaces[5], @spaces[7] ]
      puts "you won, broski! oh man"
    end
  end


  def winning_combinations
    [ @spaces[1], @spaces[2], @spaces[3] ]
  end
end
