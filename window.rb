require "gosu"
require "./basketball"

class MyWindow < Gosu::Window

	def initialize(width, height)
		super(width, height)
		self.caption = "Hello, World!"

		@background = Gosu::Image.new("images/wood.png")
		@basketball = Basketball.new(width/2, height/2)
	end

	def update
		@basketball.update
	end

	def draw
		@background.draw(0, 0, 0)
		@basketball.draw
	end

end

window = MyWindow.new(1024, 720)
window.show