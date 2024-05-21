
=begin

	Основные операции со строками
		1) upcase (перевести в верхний регистр)
		2) downcase (перевести в нижний регистр)
		3) revere (перевернуть)
		4) length (длина строки)
	
=end

sample = "welcome to amsterdam"

# некоторые строковые функции
puts "upcase: " + sample.upcase
puts "downcase: " + sample.downcase
puts "capitalize: " + sample.capitalize
puts "reverse: " + sample.reverse
puts "length: #{sample.length}"

puts "original text: #{sample}"

# мульти строки
# мульти строки
# мульти строки

puts "
Hello World
Hello World
Hello World
"

puts %/This is multi line/

puts <<AMSTERDAM
	Title
Simple text multi line
Simple text multi line
Simple text multi line
AMSTERDAM

puts <<PUTS1
PUTS
PUTS
PUTS
PUTS1