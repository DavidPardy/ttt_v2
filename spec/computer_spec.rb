require 'spec_helper'

describe "the computer player" do

  # it "selects the correct spot when the human has a winning move" do
  #   computer = Computer.new
  #   @board = @board.new
  #   computer.blocking_move(@board, [3, 9]).should eq(6)
  # end


  # it "selects a competitive move when the human has spots 4 and 8" do
  #  computer = Computer.new
  #  @board = @board.new
  #  computer.competitive_move(@board, [5]).should eq(6)
  # end
  
  # it "selects a competitive move when 3 and 8 are selected" do
  #   @board = @board.new
  #   @board.spaces = { 1 => "1", 2 => "2", 3 => "X", 4 => "4", 5 => "O", 6 => "6", 7 => "7", 8 => "X", 9 => "9" }
  #   computer = [5]
  #   human = [3,8]

  #   move = Computer.new.competitive_move(@board, human, computer)

  #   puts "MOVE IS #{move}"
  #   move.should_not == 2
  # end

  #  it "selects 2 or 8 when human has 1 then 6 then 3 and computer has 5" do
  #   @board = @board.new
  #   @board.spaces = { 1 => "X", 2 => "2", 3 => "3", 4 => "4", 5 => "O", 6 => "X", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = [5]
  #   human = [1, 6]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   move.should == 4
  # end

  # it "selects a competitive move that isn't 4 or 7 when human has 3 then 8 and computer has 5" do
  #   @board = @board.new
  #   @board.spaces = { 1 => "X", 2 => "2", 3 => "3", 4 => "4", 5 => "O", 6 => "X", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = [5]
  #   human = [1, 6]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   puts "MOVE IS #{move}"
  #   move.should_not == 7
  # end

  # it "selects a move when human has 3 then 4 and computer has 5" do
  #   @board = @board.new
  #   @board.spaces = { 1 => "1", 2 => "2", 3 => "X", 4 => "X", 5 => "O", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = [5]
  #   human = [3, 4]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   puts "MOVE IS #{move}"
  #   move.should_not == 7
  # end

  # it "selects a corner when human has 5 when human has 3 then 4 and computer has 5" do
  #   @board = @board.new
  #   @board.spaces = { 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "X", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = []
  #   human = [5]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   puts "MOVE IS #{move}"
  #   move.should_not == 5
  # end

  #COMPUTER FIRST MOVE TEST
  # it "selects spot 5 if human chooses any spot but spot 5" do
  #   @board = @board.new
  #   computer = []
  #   human = [1]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   move.should == 5
  # end

  before (:all) do
    @board = Board.new
  end

  #BLOCKING TESTS
  it "selects spot 3 if human has 1 and 2" do
    computer = [5]
    human = [1, 2]
    move = Computer.new.blocking_move(@board, human)
    move.should == 3
  end

  it "selects spot 2 if human has 1 and 3" do
    computer = []
    human = [1, 3]
    move = Computer.new.blocking_move(@board, human)
    move.should == 2
  end

  it "selects spot 1 if human has 2 and 3" do
    computer = []
    human = [2, 3]
    move = Computer.new.blocking_move(@board, human)
    move.should == 1
  end

  it "selects spot 6 if human has 4 and 5" do
    computer = []
    human = [4, 5]
    move = Computer.new.blocking_move(@board, human)
    move.should == 6
  end

  it "selects spot 5 if human has 4 and 6" do
    computer = []
    human = [4, 6]
    move = Computer.new.blocking_move(@board, human)
    move.should == 5
  end

   it "selects spot 4 if human has 5 and 6" do
    computer = []
    human = [5, 6]
    move = Computer.new.blocking_move(@board, human)
    move.should == 4
  end

  it "selects spot 9 if human has 7 and 8" do
    computer = []
    human = [7, 8]
    move = Computer.new.blocking_move(@board, human)
    move.should == 9
  end

  it "selects spot 8 if human has 7 and 9" do
    computer = []
    human = [7, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 8
  end

  it "selects spot 7 if human has 8 and 9" do
    computer = []
    human = [8, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 7
  end

  it "selects spot 7 if human has 1 and 4" do
    computer = []
    human = [1, 4]
    move = Computer.new.blocking_move(@board, human)
    move.should == 7
  end

  it "selects spot 4 if human has 1 and 7" do
    computer = []
    human = [1, 7]
    move = Computer.new.blocking_move(@board, human)
    move.should == 4
  end

  it "selects spot 1 if human has 4 and 7" do
    computer = []
    human = [4, 7]
    move = Computer.new.blocking_move(@board, human)
    move.should == 1
  end

  it "selects spot 8 if human has 2 and 5" do
    computer = []
    human = [2, 5]
    move = Computer.new.blocking_move(@board, human)
    move.should == 8
  end

  it "selects spot 5 if human has 2 and 8" do
    computer = []
    human = [2, 8]
    move = Computer.new.blocking_move(@board, human)
    move.should == 5
  end

  it "selects spot 2 if human has 5 and 8" do
    computer = []
    human = [5, 8]
    move = Computer.new.blocking_move(@board, human)
    move.should == 2
  end

  it "selects spot 9 if human has 3 and 6" do
    computer = []
    human = [3, 6]
    move = Computer.new.blocking_move(@board, human)
    move.should == 9
  end

  it "selects spot 6 if human has 3 and 9" do
    computer = []
    human = [3, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 6
  end

  it "selects spot 3 if human has 6 and 9" do
    computer = []
    human = [6, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 3
  end

  it "selects spot 9 if human has 1 and 5" do
    computer = []
    human = [1, 5]
    move = Computer.new.blocking_move(@board, human)
    move.should == 9
  end

  it "selects spot 5 if human has 1 and 9" do
    computer = []
    human = [1, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 5
  end

it "selects spot 1 if human has 5 and 9" do
    computer = []
    human = [5, 9]
    move = Computer.new.blocking_move(@board, human)
    move.should == 1
  end

  it "selects spot 7 if human has 3 and 5" do
    computer = []
    human = [3, 5]
    move = Computer.new.blocking_move(@board, human)
    move.should == 7
  end

   it "selects spot 5 if human has 3 and 7" do
    computer = []
    human = [3, 7]
    move = Computer.new.blocking_move(@board, human)
    move.should == 5
  end

  it "selects spot 3 if human has 5 and 7" do
    computer = []
    human = [5, 7]
    move = Computer.new.blocking_move(@board, human)
    move.should == 3
  end

  #WINNING
  it "selects spot 3 when it has 1 and 2" do
    computer = [1, 2]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 3
  end 

  it "selects spot 2 when it has 1 and 3" do
    computer = [1, 3]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 2
  end  

  it "selects spot 1 when it has 2 and 3" do
    computer = [2, 3]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 1
  end 

  it "selects spot 6 when it has 4 and 5" do
    computer = [4, 5]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 6
  end 

  it "selects spot 5 when it has 4 and 6" do
    computer = [4, 6]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 5
  end 

  it "selects spot 4 when it has 5 and 6" do
    computer = [5, 6]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 4
  end 

  it "selects spot 9 when it has 7 and 8" do
    computer = [7, 8]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 9
  end 

  it "selects spot 8 when it has 7 and 9" do
    computer = [7, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 8
  end 

  it "selects spot 7 when it has 8 and 9" do
    computer = [8, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 7
  end 

  it "selects spot 1 when it has 4 and 7" do
    computer = [4, 7]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 1
  end 

  it "selects spot 4 when it has 1 and 7" do
    computer = [1, 7]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 4
  end 

  it "selects spot 1 when it has 4 and 7" do
    computer = [4, 7]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 1
  end 

  it "selects spot 8 when it has 2 and 5" do
    computer = [2, 5]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 8
  end

  it "selects spot 5 when it has 2 and 8" do
    computer = [2, 8]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 5
  end  

  it "selects spot 2 when it has 5 and 8" do
    computer = [5, 8]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 2
  end 

  it "selects spot 9 when it has 3 and 6" do
    computer = [3, 6]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 9
  end 

  it "selects spot 6 when it has 3 and 9" do
    computer = [3, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 6
  end 

  it "selects spot 3 when it has 6 and 9" do
    computer = [6, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 3
  end

  it "selects spot 9 when it has 1 and 5" do
    computer = [1, 5]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 9
  end

  it "selects spot 5 when it has 1 and 9" do
    computer = [1, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 5
  end

  it "selects spot 1 when it has 5 and 9" do
    computer = [5, 9]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 1
  end

  it "selects spot 7 when it has 3 and 5" do
    computer = [3, 5]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 7
  end

  it "selects spot 5 when it has 3 and 7" do
    computer = [3, 7]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 5
  end

  it "selects spot 3 when it has 5 and 7" do
    computer = [5, 7]
    human = []
    move = Computer.new.winning_move(@board, computer)
    move.should == 3
  end

  #COMPETITIVE
  # it "selects a corner tile if human has 5" do
  #   @board = @board.new
  #   computer = []
  #   human = [5]
  #   move = Computer.new.competitive_move(@board, human, computer)
  #   move.should == 1
  # end

  it "selects a competitive move that is 2 when human 1 and 4 are selected" do
    computer = [5]
    human = [1, 4]
    move = Computer.new.competitive_move(@board, human, computer)
    puts "\n\n\n#{move}\n\n\n"
    move.should == 2
  end

end
