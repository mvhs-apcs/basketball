require "gosu"

class Basketball
	
	attr_accessor :x, :y

	def initialize(x, y)
		@x = x
		@y = y
		@vel_x = 5
		@vel_y = -3
		@image = Gosu::Image.new("images/basketball.png")
	end

	def update
		@x += @vel_x
		@y += @vel_y
	end

	def draw
		@image.draw(x, y, 1)
	end

end