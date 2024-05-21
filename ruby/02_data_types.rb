
=begin

	1) String
	2) Number
	3) Boolean
	4) Nil
	5) Arrays
	6) Hashes
	7) Symbols

	-- при создании данных тип не надо указывать явно
	-- все переменные динамические, могут менять свой тип 

=end

a = "Hello World"
p a

b = 25
p b

c = true
p c

d = 12.50
p d

sample = nil
p sample

arr = ["apple", "banan", "qiwi"]
p arr
p arr[1]

hash_colors = {
	"red" => "#FF0000", 
	"green" => "#00FF00", 
	"blue" => "#0000FF"
}
p hash_colors
p hash_colors['red']

my_symbol = :hello
p my_symbol
p my_symbol[1]