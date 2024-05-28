
=begin

	1) фреймворк Ruby2d предназначение для создания игр на языке Ruby
	2) установка фреймворка: >> gem install ruby2d
	3) создадим простую игру

		3-1) пользователь кликает на экране в любом месте мышкой
		3-2) в случайном месте появляется синий квадратик
		3-3) пользователь кликает на синем квадратике
		3-4) мы считаем сколько на это было потрачено времени 

=end

# часть 1: создание простейшего приложения
# часть 1: создание простейшего приложения
# часть 1: создание простейшего приложения


require 'ruby2d'

show


# часть 2: некоторые настройки программы
# часть 2: некоторые настройки программы
# часть 2: некоторые настройки программы


require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

Text.new('Hello World')

show


# часть 3: обрабатываем клик мышкой и убирание надписи
# часть 3: обрабатываем клик мышкой и убирание надписи
# часть 3: обрабатываем клик мышкой и убирание надписи

require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Hello World')

on :mouse_down do |event|
	puts event.x, event.y
	message.remove
end

show


# показать пункт документации: Mouse
# показать пункт документации: Shapes

# часть 4: появление квадратика после начала игры
# часть 4: появление квадратика после начала игры
# часть 4: появление квадратика после начала игры


require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Hello World')

on :mouse_down do |event|
	puts event.x, event.y
	message.remove
	Square.new(x: 100, y: 100, size: 125, color: 'purple')
end

show


# показать пункт документации: Contains

# часть 5: определяем клик внутри квадратика, меняем game_started
# часть 5: определяем клик внутри квадратика, меняем game_started
# часть 5: определяем клик внутри квадратика, меняем game_started


require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Click for begin')
game_started = false
square = nil

on :mouse_down do |event|
	puts event.x, event.y

	if game_started
		if square.contains?(event.x, event.y)
			puts 'Ok'
		end
	else
		message.remove
		square = Square.new(x: 100, y: 100, size: 125, color: 'purple')
		game_started = true
	end
end

show


# часть 6: добавляем вычисление времени, почти все сделано
# часть 6: добавляем вычисление времени, почти все сделано
# часть 6: добавляем вычисление времени, почти все сделано

require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Click for begin')

game_started = false
square = nil
start_time = nil
duration = nil

on :mouse_down do |event|
	puts event.x, event.y

	if game_started
		if square.contains?(event.x, event.y)
			duration = Time.now - start_time
			message = Text.new("Your time #{duration}. Click for begin")
		end
	else
		message.remove
		square = Square.new(x: 100, y: 100, size: 125, color: 'purple')
		start_time = Time.now
		game_started = true
	end
end

show


# часть 7: корректируем начало и конец игры, делам random
# часть 7: корректируем начало и конец игры, делам random
# часть 7: корректируем начало и конец игры, делам random


require 'ruby2d'

set background: 'green'
set title: 'Game #1: ShotGun'

message = Text.new('Click for begin')

game_started = false
square = nil
start_time = nil
duration = nil
coord_x = nil
coord_y = nil

on :mouse_down do |event|
	puts event.x, event.y

	if game_started
		if square.contains?(event.x, event.y)
			duration = ((Time.now - start_time) * 1000).round
			message = Text.new("Your time #{duration} ms. Click for begin")
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


# часть 8: финальные штрихи: сместить надпись, добавить Great!
# часть 8: финальные штрихи: сместить надпись, добавить Great!
# часть 8: финальные штрихи: сместить надпись, добавить Great!

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