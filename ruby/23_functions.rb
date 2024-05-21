
=begin

	1) в Ruby функции называются также "методы" 
	2) функции можно определять внутри классов или модулей

=end

# 1) определение простой функции
def hello
	"Hello World!"
end

puts hello

# 2) определение простой функции с параметрами
def hello_user(name)
	"Hello #{name}"
end

puts hello_user("Alice")
puts hello_user(:Bob)

# 3) определение простой функции с параметрами по-умолчанию
def hello_user_name(name="Tomas")
	"Hello #{name}"
end

puts hello_user_name("Emmanuel")
puts hello_user_name

# 4) функция с переменным числом параметров
def hello_users(*names)
	"Hello: #{ names.join(', ') }"
end

puts hello_users("Oleg","Anton","Polina")
puts hello_users("Oleg","Anton","Polina", "Denis", "Martin")
puts hello_users("Oleg")
puts hello_users

=begin
	3) в Ruby функции это объекты 1-го класса
	4-1) их можно присваивать переменной
	4-2) их можно передавать как аргумент функции
	4-3) их можно возвращать как результат работы функции
	4-4) их можно хранить в структурах данных
	5) в Ruby почти все является объектом 1-го класса, а именно...
	6) ...строки, числа, массивы, хэши, методы, блоки, процедуры и лямбды
=end

# 5) передача функции как параметра в другую функцию
def greeting(name)
	"Hello #{name}"
end

value = method(:greeting)
puts value.call("Homer Simpson")

=begin

	def greeting(name)                # [1] 
		"Hello #{name}"               # [2]
	end                               # [3]

	value = method(:greeting)         # [4]
	puts value.call("Homer Simpson")  # [5]

	[1] => определяем метод (функцию) greeting (принимает 1 параметр)
	[2] => функция возвращает результат (строка) "Hello <name>"
	[3] => конец определения функции

	[4] => переменная value получает результат работы метода method
		4-1) => метод method берет имя функции (как строку или как символ)
		4-2) => метод method возвращает объект типа `Method`
		4-3) => говорят, что method представляет функцию greeting

	[5] => выводим на экран результат вызова метода call для переменной value
		5-1) указываем, что работаем с переменной (объектом) value
		5-2) для value вызываем метод call, который вызывает функцию, которая им представлена
		5-3) передаем методу call (а он методу greeting) параметр (строку "Homer Simpson")

=end