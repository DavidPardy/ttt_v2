class Computer
	def random_move(board, space)
		spaces[space] = 'O'
		puts "Tile #{space} was chosen by the computer player."
	end

	def move(board, player, computer)
		board.spaces.each do |spot, symbol|
			if symbol != 'X' && symbol != 'O'
				puts "It's the computer's turn..."
				sleep(1)
				random_move(board, space)
				break
			end
		end
	end

	def optimal_move

	end

	def winning_move(board, computer)
		Board::WINNING_COMBOS.each do |combo|
			difference = combo - player
			if difference.length == 1
				#If the difference is 1, this would mean one element. It takes 3 elements to win.
				#So difference.first would just be that sole element, and that's where the computer should place a move.
				move = difference.first
				if board.space_available?(move)
					return move
				end
			end
		end
		return false
	end

	def blocking_move(board, player)
		Board::WINNING_COMBOS.each do |combo|
			difference = combo - player
			if difference.length == 1
				#If the difference is 1, this would mean one element. It takes 3 elements to win.
				#So difference.first would just be that sole element, and that's where the computer should place a move.
				move = difference.first
				if board.space_available?(move)
					return move
				end
			end
		end
		return false
	end

end
