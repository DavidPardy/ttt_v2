require 'game'
require 'board'
require 'computer'

describe "selects winning move" do
  it "the computer selects spot 3 when spot 3 is a winning move for computer" do
    @p1 = []
    @p2 = []
    board = Board.new
    computer = Computer.new
    computer_move = computer.move(board, @p1, @p2)
    
    board.spaces[computer_move] = 'O'
    board.draw_board

    board.spaces[computer_move].should == ['O', 'O', 'O']
  end
end
     