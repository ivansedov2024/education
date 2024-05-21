
=begin

	1) yield это ключевое слово, которое используется для вызова блока кода, переданного функции
	2) yield в Ruby очень сильно отличается от аналогичного оператора в Python

		а) в Python yield создает генераторы
		б) в Python yield возвращает результут функции между вызовами
		в) в Python типа вот так...

		def counter():
			//что-то считаем
			//вернули результат yield
			//дальше считаем

		//в основной программе
		sample = counter(100) //и пришли какие-то данные (1,2,3,4...)

	3) в Ruby yield работает проще: он вызывает блок кода для функции
	4) в функцию блок кода передается как параметр между {...} либо do...end
	5) основные концепции yield:
		5-1) если вызвать метод с блоком, то он доступен внутри метода через yield
		5-2) внутри метода блок кода можно вызывать несколько раз (через yield)
		5-3) при вызове yield можно блоку передавать параметры**
		---
		**параметры для параметра:)

=end

# 1) самый простой блок
def simple_function
	puts "First string"
	yield
	puts "Last string"
end

simple_function {
	puts "Tra-la-la"
}

puts

# 2) блок кода с параметром
def hard_function
	puts "First string"
	yield("Amsterdam")
	puts "Last string"
end

hard_function {
	|message|
	puts message
}

puts

# 3) блок кода с параметром и проверкой того, что передали блок кода
def banc_hello
	puts "Welcome to Banc"
	if block_given?
		yield
	else
		puts "Dear Guest"
	end
end

# banc_hello
banc_hello {
	puts "Mister Anderson"
}