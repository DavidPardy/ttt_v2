class Player
  def move
  	puts "Your turn, human!"
    input = gets.to_i
    if input.between?(1, 9)
    	puts "You have selectted spot #{input}"
    else
    	puts "wrong input broski" if !input.between(1, 9)
    end
  end
end
