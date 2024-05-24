
=begin

	1) inheritance (наследование) позволяет под-классу наследовать свойства и методы супер-класса
	2) это позволяет повторно использовать код и создавать сложные структуры из простых
	3) основные концепции

		3-1) подкласс автоматически наследуют свойства и методы супер-класса
		3-2) подкласс может переопределять их, а также добавлять свои
		3-3) для вызова методы супер-класа из под-класса используют `super`

=end

class Animal
	def initialize(name)
		@name = name
	end

	def speak
		"Привет! Я животное!"
	end
end

animal1 = Animal.new("lion")

puts animal1.speak

class Dog < Animal
	def speak
		"Гав-гав! Я животное #{@name}"
	end
end

class Cat < Animal
	def speak
		"Мяу-мяу! Я животное #{@name}"
	end
end

animal2 = Dog.new("Тузик")
animal3 = Cat.new("Матильда")

puts animal2.speak
puts animal3.speak

=begin

	4) Animal это супер-класс
	5) Dog, Cat это под-классы супер-класса Animal
	6) инициализация и speak супер-класса наследуются Dog, Cat
	7) speak переопределяется внутри под-классов Dog, Cat

	8) допустим, что нам дали задание создать систему классов собак
	9) есть просто животные (имя, возраст), а есть собаки
		9-1) имя
		9-2) возраст
		9-3) порода

=end

class Animal
	def initialize(name, age)
		@name = name
		@age = age
	end

	def info
		"I'am #{@name}, i'am #{@age} years old"
	end
end

class Dog < Animal
	def initialize(name, age, race)
		super(name, age)
		@race = race
	end

	def info
		super << " and my race is #{@race}"
	end
end

dog1 = Dog.new("Aramis", 4, "boxer")
puts dog1.info