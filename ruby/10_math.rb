
sample = -15.99

puts "abs(sample) = " + sample.abs.to_s
puts "round(sample) = " + sample.round.to_s

sample = 10.9

puts "floor(sample) = " + sample.floor.to_s
puts "ceil(sample) = " + sample.ceil.to_s

val1 = Math.sqrt(4)
puts val1

val2 = Math.sqrt(2)
puts val2

val3 = Math.log(100)
puts val3

=begin

	log a для числа b это х, такое что a**х = b
	log 2 для числа 8 это 3, такое что 2**3 = 8

	log Ruby имеет основание е = 2.71828 (число эйлера)

	1-1) это число одна из наиболее удивительных констант в математике
	1-2) это число = пределу функции (1 + 1/n)**n, при n -> бесконечности
	1-3) если рассматривать log с основанием е для числа е,то он равен 1
	1-4) логарифм числа x > 0 = степени, в которую надо возвести е, чтобы получить x

	чему равен натуальный логарим 50? 
	ответ: 3.9 (50 = е**3.9)

	1-5) логарифм функции y = e**x очень быстро растет (экспоненциальный рост)
	1-6) логарифм используют для моделирования роста популяций или сложности алгоритмов

=end

a = Math.log10(100)
puts a

b = Math.log(100)
puts b