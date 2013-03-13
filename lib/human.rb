class Human
  
  def human_prompt
    puts "Your turn player 1! Please enter a number between 1 and 9:"
    @human = gets.chomp.to_i
    
    if @human.between?(1,9)
        @spaces[@human] = 'X'
        #hash below needs to be updated correctly within while loop, still overwrites
        @human_selection[@human]
        sleep(1)
        puts "Player 1, you've chose these values so far: #{@human_selection}"
    else
      while !@human.between?(1,9)
        puts 'Player 1, try a number between 0 and 9 you noob!'
        @human = gets.chomp.to_i
        @spaces[@human] = 'X'
      end
    end
  end

end






  # what I was doing there was just hitting enter enter enter, basically

  # You noticed that it dropped down a long list of a bunch of other gistys aof your fyraom the ypastya?ya
