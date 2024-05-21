
=begin

	1) lambda это специальный вид объкта Proc, который похож на методы:)))
	2) labmda используется для создания анонимных функций, которые могут быть выполнены позже
	3) особенности lambda:
		3-1) количество аргументов строго проверяется
		3-2) return заканчивает саму lambda, но не метод который ее вызвал

=end

# 1) создание lambda через служебное слово
sample1 = lambda { |x| puts x }

# 2) создание lambda через стрелочку
sample2 = ->(x) { puts x }

# пример 1
hello = lambda { puts "Hello Universe" }
hello.call

# пример 2
add_value = lambda { |x,y| x+y }
puts add_value.call(3,4)

# пример 3
def operation(a, b, oper)
	oper.call(a,b)
end

subtract = lambda { |x,y| x-y }
puts operation(10, 4, subtract)

# пример 4
def magic_function(val)
	->(x) { x*val }
end

my_function2 = magic_function(2)
my_function3 = magic_function(3)
puts my_function2.call(10)
puts my_function3.call(10)

