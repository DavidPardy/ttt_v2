#/spec/game_spec.rb
require 'rspec'
require 'game'

describe "selects winning move" do
  it "selects spot 3 when spot 3 is a winning move" do
    @p1 = [2, 6, 4]
    @p2 = ['O', 'O', 3]
    computer = Computer.new
    a_winning_board_combo = [1, 2, 3]
    computer_move = computer.move(a_winning_board_combo, @p1, @p2)
    computer_move.should == 3
  end
end
     