class Player

	STARTING_HIT_POINTS = 100

	attr_reader :name, :hit_points
	attr_writer :hit_points

	def initialize(name, hit_points = STARTING_HIT_POINTS)
		@name = name
		@hit_points = hit_points
	end

	def damage(player)
		player.hit_points -= 10
	end

# private
#
# 	attr_writer :hit_points

end
