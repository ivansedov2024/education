
=begin

	1) proc это объект, который инкапсулирует блок кода (сохраняет)
	2) proc позволяет сохранить блок кода, чтобы вызвать его попозже
	3) в чем разница между Proc и функиями?
		3-1) разница в определении (функция чере def, proc через =)
		3-2) разница в аргументах 
			- функции проверят что передали и сколько передали (может быть ошибка)
			- proc обрезает лишние аргументы, а недостающие считает = nil
		3-3) разница в возврате значений
			- в функции всегда возвращается значение (через return или крайнюю строку)
			- proc возвращается через next

	Функция?			def name ... return ...
	Proc?				name = Proc.new {... next ...}

=end

# 1) определение proc
proc1 = Proc.new {
	puts "Hello World"
}

proc2 = proc {
	puts "Hello Universe"
}

proc1.call
proc2.call

# 2) примеры использования
greeting = proc {
	|name|
	puts "Hello #{name}"
}

greeting.call("Alice")
greeting.call("Bob")

# 3) пример использования (более крутой)
def work_function(proc_obj)
	10.times {
		proc_obj.call
	}
end

proc_obj1 = proc {
	puts "Hello! I'am working now..."
}

proc_obj2 = proc {
	puts "Au revoir! I'am working now..."
}

work_function(proc_obj1)
work_function(proc_obj2)

# 4) пример использования (совсем крутой, паразительный, удивительный)
def op(a, b, operation)
	operation.call(a,b)
end

add = proc { |x,y| x+y }
sub = proc { |x,y| x-y }

puts op(5,3,add)
puts op(5,3,sub)

=begin

	4) есть такая штука как proc (кусок кода, который можно вызвать по имени)
	5) есть такая штука как lambda (кусок кода, который можно вызвать по имени)

	6-1) proc не строго проверяет что ему передали (больше, меньше = нет ошибки)
	6-2) lambda строго проверяет что ей передали (больше, меньше = ошибка)
	6-3) если внутри proc встретилось return, то он (proc) заканчивает метод, вызвавший его
	6-4) если внутри lambda встретилось return, то она (lambda) заканчивается

=end

puts 
puts "Примеры про передачу аргументов"

proc11 = proc {
	|x,y|
	puts "PROC x = #{x}, y = #{y}"
}
proc11.call(10)
proc11.call(10,20)
proc11.call(10,20,30)

puts

lambda11 = -> (x,y) {
	puts "LAMBDA x = #{x}, y = #{y}"
}

# lambda11.call(10)
lambda11.call(10,20)
# lambda11.call(10,20,30)

puts 
puts "Примеры про использование return"

proc12 = proc {
	puts "First string"
	puts "Second string"
	return
	puts "Last string"
}

def function12(p)
	puts "Amsterdam"
	puts "Paris"
	p.call
	puts "Tokio"
end

# Строка "Tokio" не будет выведена, proc вышла из метода
function12(proc12)

puts

lambda13 = -> {
	puts "Sony"
	puts "Toshiba"
	return
	puts "Toyota"
}

def function13(p)
	puts "11111111111111111"
	puts "22222222222222222"
	p.call
	puts "33333333333333333"
end

# строка "33333333333333333" будет выведена, lambda выходит только из себя
function13(lambda13)
