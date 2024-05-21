
=begin

	1) написать программу для выбрасывания случайного числа от 1 до 10
	2) программа должна выбрасывать случайное число, пока не получится 7
	3) нас интересует вопрос: сколько раз пришлось бросать жребий, пока не выпало 7

=end

def dice
	test = 0
	loop do
		test = test + 1
		break if yield
	end
	puts "Успех! Всего попыток: #{test}"
end

dice {
	result = rand(1..10)
	puts "Выбросили: #{result}"
	result == 7
}