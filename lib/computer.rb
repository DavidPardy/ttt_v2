class Computer
	def move(board, player, computer)
		board.spaces.each do |space, symbol|
			if symbol != 'X' && symbol != 'O'
				puts "It's the computer's turn..."
				sleep(1)
				random_move(board, space)
				break
			end
		end
	end

	def random_move(board, space)
		board.spaces[space] = 'O'
		puts "Tile #{space} was chosen by the computer player."
	end

	def optimal_move
		winning = winning_move(board, computer)
		optimal = winning

		blocking = blocking_move(board, player)
		optimal ||= blocking

		if optimal != false
			random_move(board, optimal)
		else
			return false
		end
	end

	def winning_move(board, computer)
		Board::WINNING_COMBOS.each do |combo|
			difference = combo - player
			if difference.length == 1
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
				move = difference.first
				if board.space_available?(move)
					return move
				end
			end
		end
		return false
	end

end
