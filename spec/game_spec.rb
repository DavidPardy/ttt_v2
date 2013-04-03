require 'computer'
require 'board'


describe "selects winning move" do
  it "the computer selects spot 3 when spot 3 is a winning move for computer" do
    @p1 = []
    @p2 = [1, 2]
    computer = Computer.new
    board = Board.new
  
    computer.winning_move(board, [1,2]).should eq(3)
  end
end
     