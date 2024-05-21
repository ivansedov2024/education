
=begin

	1) gets     => получить строку из стандартного ввода (строка\n)
	2) chomp    => убрать символ \n из конца строки

=end

# puts "Введите ваше имя: "
# name1 = gets
# p name1

# puts "Введите ваше имя: "
# name2 = gets.chomp
# p name2

def input_s
	gets.chomp
end

def input_i
	puts "Введите число:"
	gets.chomp.to_i
end

# puts "Введите ваше имя: "
# name3 = input
# p name3

# puts "1-ое число:"
# val1 = input_s.to_i

# puts "2-ое число:"
# val2 = input_s.to_i

# puts "Сумма равна:"
# puts val1 + val2

value1 = input_i
value2 = input_i
puts "Сумма #{value1} + #{value2} = #{value1+value2}"
