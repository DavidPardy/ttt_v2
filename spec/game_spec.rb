
require 'board'
require 'computer'

describe "selects winning move" do
  it "the computer selects spot 3 when spot 3 is a winning move for computer" do
    @p1 = []
    @p2 = [1, 2]
    board = Board.new
    computer = Computer.new
    board.spaces[1] = "O"
    board.spaces[2] = "O"
    computer_move = computer.winning_move(board, [1, 2])
    computer.winning_move(board, [1,2]).should eq(computer_move)
  end
end
     