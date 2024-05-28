
require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Click for begin', x: 20, y: 20)

game_started = false
square = nil
start_time = nil
duration = nil
coord_x = nil
coord_y = nil

on :mouse_down do |event|
	if game_started
		if square.contains?(event.x, event.y)
			duration = ((Time.now - start_time) * 1000).round
			message = Text.new("Great! Your time #{duration} ms. Click for begin", x: 20, y: 20)
			square.remove
			game_started = false
		end
	else
		message.remove
		coord_x = rand(Window.width)
		coord_x -= 25 if coord_x > Window.width - 25
		coord_y = rand(Window.height)
		coord_y -= 25 if coord_y > Window.height - 25
		square = Square.new(x: coord_x, y: coord_y, size: 25, color: 'purple')
		start_time = Time.now
		game_started = true
	end
end

show