describe "the computer player" do
  it "selects the correct spot when it has an available winning move" do
    computer = Computer.new
    board = Board.new
    computer.winning_move(board, [1,2]).should eq(3)
  end

  it "selects the correct spot when the human has a winning move" do
    computer = Computer.new
    board = Board.new
    computer.blocking_move(board, [3, 9]).should eq(6)
  end

  # it "selects a winning move over a blocking move (optimal move)" do
  #   computer = Computer.new
  #   board = Board.new
  #   computer.optimal_move(board, [])
  # end

  it "selects a competitive move when the human has spots 4 and 8" do
    computer = Computer.new
    board = Board.new
    computer.competitive_move(board, [5]).should eq(6)
  end
  #is human going to be included in the comp move method param?
end
