class Player

	STARTING_HIT_POINTS = 60

	attr_reader :name, :hit_points

	def initialize(name, hit_points = STARTING_HIT_POINTS)
		@name = name
		@hit_points = hit_points
	end


end



