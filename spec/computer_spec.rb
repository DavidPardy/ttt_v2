require 'spec_helper'
describe "the computer player" do
  # it "selects the correct spot when it has an available winning move" do
  #   computer = Computer.new
  #   board = Board.new
  #   computer.winning_move(board, [1,2]).should eq(3)
  # end

  # it "selects the correct spot when the human has a winning move" do
  #   computer = Computer.new
  #   board = Board.new
  #   computer.blocking_move(board, [3, 9]).should eq(6)
  # end

  # it "selects a winning move over a blocking move (optimal move)" do
  #   computer = Computer.new
  #   board = Board.new
  #   computer.optimal_move(board, [])
  # end

  # it "selects a competitive move when the human has spots 4 and 8" do
  #  computer = Computer.new
  #  board = Board.new
  #  computer.competitive_move(board, [5]).should eq(6)
  # end
  
  # it "selects a competitive move when 3 and 8 are selected" do
  #   board = Board.new
  #   board.spaces = { 1 => "1", 2 => "2", 3 => "X", 4 => "4", 5 => "O", 6 => "6", 7 => "7", 8 => "X", 9 => "9" }
  #   computer = [5]
  #   human = [3,8]

  #   move = Computer.new.competitive_move(board, human, computer)

  #   puts "MOVE IS #{move}"
  #   move.should_not == 2
  # end

  #  it "selects a competitive move when human has 1 and 6 after computer chooses 5" do
  #   board = Board.new
  #   board.spaces = { 1 => "X", 2 => "2", 3 => "3", 4 => "4", 5 => "O", 6 => "X", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = [5]
  #   human = [1, 6]
  #   move = Computer.new.competitive_move(board, human, computer)
  #   puts "MOVE IS #{move}"
  #   move.should == 7 || move.should == 4
  # end

   it "selects a move when human has 1 then 6 then 3 and computer has 5" do
    board = Board.new
    board.spaces = { 1 => "X", 2 => "2", 3 => "3", 4 => "O", 5 => "O", 6 => "X", 7 => "7", 8 => "8", 9 => "9" }
    computer = [5]
    human = [1, 6]
    move = Computer.new.competitive_move(board, human, computer)
    puts "MOVE IS #{move}"
    move.should_not == 7
  end

  # it "selects a competitive move that isn't 4 or 7 when human has 3 then 8 and computer has 5" do
  #   board = Board.new
  #   board.spaces = { 1 => "X", 2 => "2", 3 => "3", 4 => "4", 5 => "O", 6 => "X", 7 => "7", 8 => "8", 9 => "9" }
  #   computer = [5]
  #   human = [1, 6]
  #   move = Computer.new.competitive_move(board, human, computer)
  #   puts "MOVE IS #{move}"
  #   move.should_not == 7
  # end

end
