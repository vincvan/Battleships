require './lib/ship'

class Player

# attr_accessor :fire_missile

	def intitialize(board: :just_a_board)
		@board = board
	end

	attr_reader :cell

	def fire_missile_at(opponent_board, at_coordinate)
		opponent_board.cell[at_coordinate].hit!
	end
	
	def place_ship(ship)
		cell.ship!(ship)
	end


	def ships
		[]
	end

end