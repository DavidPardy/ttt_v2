class Computer
	def random_move(board, space)
		spaces[space] = 'O'
		puts "Tile #{space} was chosen by the computer player."
	end

	def move(board, player, computer)
		board.spaces.each do |spot, x_or_o|
			if x_or_o != 'X' && x_or_o != 'O'
				puts "It's the computer's turn..."
				sleep(1)
				random_move(board, space)
				break
			end
		end
	end

	def optimal_move

	end

	def winning_move
		
	end

	def blocking_move
		
	end

end
