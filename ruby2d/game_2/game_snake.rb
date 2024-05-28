
=begin

	1) создадим игру "Змейка"

		2-1) змейка всегда движется вперед
		2-3) мы управляем змейкой клавишами клавиатуры
		2-3) змейка занимает несколько квадратиков
		2-4) змейка кушает яблоки, который появляются на поле
		3-5) скушав яблоко, змейка становится длиннее
		3-6) змейка появляется с другой стороны экраны, когда достигает края
		3-7) змейка умирает, если касается сама себя
		3-8) мы считаем число яблок, которые она скушает

=end

# часть 1: создаем класс Snake
# часть 1: создаем класс Snake
# часть 1: создаем класс Snake

# 1) константы
# 2) сам класс Snake
# 3) экземпляр класса
# 4) отрисовка экземпляра

# показать рисунок 1


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'

# width = 640 / 20 = 32
# height = 480 / 20 = 24

GRID_SIZE = 20

class Snake
	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end
end

snake = Snake.new
snake.draw

show


# часть 2: заставляем змейку двигаться
# часть 2: заставляем змейку двигаться
# часть 2: заставляем змейку двигаться

# 1) функция update (показать точку)
# 2) создаем clear
# 3) создаем snake.move
# 4) создаем snake.draw
# 5) добавляем @direction 

# 6) нет необходимости передвигать внутри массива все клетки тела змейки
# 7) можно удалить 1-ую клетку хвоста и добавить перед головой одну клетку
# 8) чтобы замедлить обновление добавим fps_cap=1

# показать рисунок 2


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 1

# width = 640 / 20 = 32
# height = 480 / 20 = 24

GRID_SIZE = 20

class Snake
	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		case @direction
		when 'down'
			@positions.shift
		end
	end
end

snake = Snake.new
snake.draw

update do
	clear
	snake.move
	snake.draw
end

show


# часть 3: заставим змейку двигаться и добавим управление
# часть 3: заставим змейку двигаться и добавим управление
# часть 3: заставим змейку двигаться и добавим управление

# 1) определим приватный метод, который возвращает позицию головы head
# 2) в данном случае метод вернет значение [2,3] = голова змейки
# 3) голова змейки = последнее значение массива @positions
# 4) значит, если мы используем push, то добавим 1 клетку перед головой
# 5) значит, если мы используем shift, то удалим 1 клетку с хвоста

# показать рисунок 3

require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 1

GRID_SIZE = 20

class Snake
	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down'
			@positions.push([head[0], head[1] + 1])
		end
	end

	private

	def head
		@positions.last
	end
end

snake = Snake.new

update do
	clear
	snake.move
	snake.draw
end

show


# часть 4: добавим управление от клавиатуры
# часть 4: добавим управление от клавиатуры
# часть 4: добавим управление от клавиатуры

# 1) показать print event.key
# 2) проверим, что игрок нажал клавиши
# 3) допишем изменения направлений
# 4) сделам так, чтобы @direction можно было изменять

# показать рисунок 4

require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down'
			@positions.push([head[0], head[1] + 1])
		when 'up'
			@positions.push([head[0], head[1] - 1])
		when 'left'
			@positions.push([head[0] - 1, head[1]])
		when 'right'
			@positions.push([head[0] + 1, head[1]])
		end
	end

	private

	def head
		@positions.last
	end
end

snake = Snake.new

update do
	clear
	snake.move
	snake.draw
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		snake.direction = event.key
	end
end

show


# часть 5: уберем возможность разворота на 180 градусов
# часть 5: уберем возможность разворота на 180 градусов
# часть 5: уберем возможность разворота на 180 градусов

# 1) напишем функцию can_change_direction_to? (можно ли поворачивать?)
# 2) функция проверяет текущее направление движения и новое направение

	# 2-1) если direction = up, а новое направление new_direction = right => true
	# 2-2) если direction = up, а новое направление new_direction = down  => false


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down' 		then @positions.push([head[0], head[1] + 1])
		when 'up' 			then @positions.push([head[0], head[1] - 1])
		when 'left' 		then @positions.push([head[0] - 1, head[1]])
		when 'right' 		then @positions.push([head[0] + 1, head[1]])
		end
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	private

	def head
		@positions.last
	end
end

snake = Snake.new

update do
	clear
	snake.move
	snake.draw
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 6: сделаем так, чтобы змейка приходила с другой стороны
# часть 6: сделаем так, чтобы змейка приходила с другой стороны
# часть 6: сделаем так, чтобы змейка приходила с другой стороны

# 1) прямоугольник нашей жизни: 32 Х 24 квадратика
# 2) для любого числа % 32 даст число 0-31 (усекание числа)
# 3) напишем приватную функцию new_coords(), которая усекает координаты
# 4) заведем еще две константы для ширины и высоты прямоугольника
# 5) но при передаче данных в new_coords мы отдаем две переменные, а возвращаем массив

# обратить внимание на структуру функций внутри класса


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

snake = Snake.new

update do
	clear
	snake.move
	snake.draw
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 7: создадим яблоко
# часть 7: создадим яблоко
# часть 7: создадим яблоко

# 1) создадим новый класс Game, ее эеземпляр будет отвечать за состояния игры
# 2) внутри класса сделаем инициализацию и метод draw
# 3) внутри update появляется метод game.draw



require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

class Game
	def initialize
		@score = 0
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

	def draw
		Square.new(x: @ball_x * GRID_SIZE, y: @ball_y * GRID_SIZE, size: GRID_SIZE, color: 'yellow')
	end
end

snake = Snake.new
game = Game.new

update do
	clear
	snake.move
	snake.draw
	game.draw
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 8: пусть яблочко можно кушать
# часть 8: пусть яблочко можно кушать
# часть 8: пусть яблочко можно кушать

# 1) добавим надпись в левом верхнем углу
# 2) добавим код в основной блок

update do
	clear
	snake.move
	snake.draw
	game.draw
	if game.snake_hit_ball?(snake.x, snake.y)
		game.record_hit
	end	
end

# 3) под этот код допишем некоторые функции и методы
# 4) методы x, y (возвращают координаты головы змейки)
# 5) метод snake_hit_ball? (проверка совпадения головы и яблока)



require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		@positions.shift
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	def x
		head[0]
	end

	def y
		head[1]
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

class Game
	def initialize
		@score = 0
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

	def draw
		Square.new(x: @ball_x * GRID_SIZE, y: @ball_y * GRID_SIZE, size: GRID_SIZE, color: 'yellow')
		Text.new("Score: #{@score}", color: 'green', x: 10, y: 10)
	end

	def snake_hit_ball?(x,y)
		@ball_x == x && @ball_y == y
	end

	def record_hit
		@score += 1
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

end

snake = Snake.new
game = Game.new

update do
	clear
	snake.move
	snake.draw
	game.draw
	if game.snake_hit_ball?(snake.x, snake.y)
		game.record_hit
	end	
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 9: рост змейки после того как она покушала
# часть 9: рост змейки после того как она покушала
# часть 9: рост змейки после того как она покушала

# 1) заведем новое поле змейки @growing = false (нет роста)
# 2) внутри функции move() будем удалять хвост, если нет роста
# 3) внутри функции move() не будем хвост, если есть рост
# 4) показать все варианты: есть рост, нет роста


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
		@growing = false
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		if !@growing
			@positions.shift
		end
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
		@growing = false
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	def x
		head[0]
	end

	def y
		head[1]
	end

	def grow
		@growing = true
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

class Game
	def initialize
		@score = 0
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

	def draw
		Square.new(x: @ball_x * GRID_SIZE, y: @ball_y * GRID_SIZE, size: GRID_SIZE, color: 'yellow')
		Text.new("Score: #{@score}", color: 'green', x: 10, y: 10)
	end

	def snake_hit_ball?(x,y)
		@ball_x == x && @ball_y == y
	end

	def record_hit
		@score += 1
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

end

snake = Snake.new
game = Game.new

update do
	clear
	snake.move
	snake.draw
	game.draw
	if game.snake_hit_ball?(snake.x, snake.y)
		game.record_hit
		snake.grow
	end	
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 10: добавим смерть от касания самой себя
# часть 10: добавим смерть от касания самой себя
# часть 10: добавим смерть от касания самой себя

	if snake.hit_itself?
		game.finish
	end	

# 1) фактически, надо проверить, что в массиве квадратиков змейки все значени уникальны
# 2) для этого можно сделать его уникальным и сравнить число записей с оригинальным массивом 
# 3) написать hit_itself
# 4) написать finish (для этого создадим переменную @finished)

# показать, что надпись выводится


require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
		@growing = false
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		if !@growing
			@positions.shift
		end
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
		@growing = false
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	def x
		head[0]
	end

	def y
		head[1]
	end

	def grow
		@growing = true
	end

	def hit_itself?
		@positions.uniq.length != @positions.length 
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

class Game
	def initialize
		@score = 0
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
		@finished = false
	end

	def draw
		Square.new(x: @ball_x * GRID_SIZE, y: @ball_y * GRID_SIZE, size: GRID_SIZE, color: 'yellow')
		Text.new("Score: #{@score}", color: 'green', x: 10, y: 10)
	end

	def snake_hit_ball?(x,y)
		@ball_x == x && @ball_y == y
	end

	def record_hit
		@score += 1
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

	def finish
		puts "Finish game"
		@finished = true
	end

end

snake = Snake.new
game = Game.new

update do
	clear
	snake.move
	snake.draw
	game.draw
	if game.snake_hit_ball?(snake.x, snake.y)
		game.record_hit
		snake.grow
	end	
	if snake.hit_itself?
		game.finish
	end	
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	end
end

show


# часть 11: обработаем смерть змейки
# часть 11: обработаем смерть змейки
# часть 11: обработаем смерть змейки

# 1) добавим unless game finished? (false) 
# 2) добавим unless для отрисовки game
# 3) заменим text_message для разных ситуаций
# 4) добавим обработку :ket_down = 'r'



require 'ruby2d'

set background: 'navy' 
set title: 'Game #2: Snake'
set fps_cap: 10

GRID_SIZE = 20
GRID_WIDTH = Window.width / GRID_SIZE
GRID_HEIGHT = Window.height / GRID_SIZE

class Snake
	attr_writer :direction

	def initialize
		@positions = [[2,0],[2,1],[2,2],[2,3]]
		@direction = 'down'
		@growing = false
	end

	def draw
		@positions.each do |position|
			Square.new(x: position[0] * GRID_SIZE, y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white')
		end
	end

	def move
		if !@growing
			@positions.shift
		end
		case @direction
		when 'down' 		then @positions.push(new_coords(head[0], head[1] + 1))
		when 'up' 			then @positions.push(new_coords(head[0], head[1] - 1))
		when 'left' 		then @positions.push(new_coords(head[0] - 1, head[1]))
		when 'right' 		then @positions.push(new_coords(head[0] + 1, head[1]))
		end
		@growing = false
	end

	def can_change_direction_to?(new_direction)
		case @direction
		when 'up' 			then new_direction != 'down'
		when 'down' 		then new_direction != 'up'
		when 'left' 		then new_direction != 'right'
		when 'right' 		then new_direction != 'left'
		end
	end

	def x
		head[0]
	end

	def y
		head[1]
	end

	def grow
		@growing = true
	end

	def hit_itself?
		@positions.uniq.length != @positions.length 
	end

	private

	def new_coords(x,y)
		[x % GRID_WIDTH, y % GRID_HEIGHT]
	end

	def head
		@positions.last
	end
end

class Game
	def initialize
		@score = 0
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
		@finished = false
	end

	def draw
		unless finished?
			Square.new(x: @ball_x * GRID_SIZE, y: @ball_y * GRID_SIZE, size: GRID_SIZE, color: 'yellow')
		end
		Text.new(text_message, color: 'green', x: 10, y: 10)
	end

	def snake_hit_ball?(x,y)
		@ball_x == x && @ball_y == y
	end

	def record_hit
		@score += 1
		@ball_x = rand(GRID_WIDTH)
		@ball_y = rand(GRID_HEIGHT)
	end

	def finish
		@finished = true
	end

	def finished?
		@finished
	end

	private

	def text_message
		if finished?
			"Game Over! Score: #{@score}. Press 'R' to restart"
		else
			"Score: #{@score}"
		end
	end

end

snake = Snake.new
game = Game.new

update do
	clear

	unless game.finished?
		snake.move
	end
	snake.draw
	game.draw
	if game.snake_hit_ball?(snake.x, snake.y)
		game.record_hit
		snake.grow
	end	
	if snake.hit_itself?
		game.finish
	end	
end

on :key_down do |event|
	if ['up', 'down', 'left', 'right'].include?(event.key)
		if snake.can_change_direction_to?(event.key)
			snake.direction = event.key
		end
	elsif event.key == 'r'
		snake = Snake.new
		game = Game.new
		
	end
end

show