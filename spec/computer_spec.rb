describe "selects winning move" do
  it "the computer selects the correct spot when it has an available winning move" do
    computer = Computer.new
    board = Board.new
    computer.winning_move(board, [1,2]).should eq(3)
  end
end

describe "selects blocking move" do
  it "the computer selects the correct spot when the human has a winning move" do
    computer = Computer.new
    board = Board.new
    computer.blocking_move(board, [3, 9]).should eq(6)
  end
end

