
=begin

	1) классы в Ruby это фундаментальная часть объектно-ориентированного программирования
	2) классы в Ruby позволяют создавать объекты, которые инкапсулируют данные и поведение
	3) пример про шпиона, которого мы готовим для заброски в США (атрибуты и методы)
	4) концепции классов
		4-1) создание класса (class)
		4-2) атрибуты классов (данные, которые есть у объекта)
		4-3) методы классов (определяеют поведение объекта)
		4-4) конструкторы (методы, которые вызыватся при создании объекта)
		4-5) наследование (позволяет создавать новые классы на основе существующих)
		4-6) модули (используются для организации и повторного использования кода)

=end

# пример: простой класс
# пример: простой класс
# пример: простой класс

class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end

end

person1 = Person.new("Alice", 30)
person2 = Person.new("Bob", 33)
person3 = Person.new("Polina", 15)

# person3.name = "Marina"

person1.display_info
person2.display_info
person3.display_info

puts

pers = []
pers << person1
pers << person2
pers << person3
puts pers

puts 

pers.each do |per|
	per.display_info
end

puts
puts
puts

# пример: атрибуты классов и их изменение
# пример: атрибуты классов и их изменение
# пример: атрибуты классов и их изменение

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end

end

person1 = Person.new("Bob", 25)
person2 = Person.new("Polina", 6)

person1.display_info
person2.display_info

person1.name = "Robert"
person1.age = 26
person2.name = "Marina"
person2.age = 16

person1.display_info
person2.display_info

puts
puts
puts

# пример: наследование классов (с новыми методами и атрибутами)
# пример: наследование классов (с новыми методами и атрибутами)
# пример: наследование классов (с новыми методами и атрибутами)

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

class Employee < Person
  attr_accessor :position, :salary

  def initialize(name, age, position, salary)
    super(name, age)
    @position = position
    @salary = salary
  end

  def display_info
    super
    puts "Position: #{@position}, Salary: #{@salary}"
  end
end

user = Person.new("Marina", 16)
user.display_info

work_user = Employee.new("Alice", 28, "Developer", 60000)
work_user.display_info

puts
puts
puts

# пример: модули и их использование
# пример: модули и их использование
# пример: модули и их использование

# можно разместить внутри файла greeting.rb
module Greeting
  def greet
    puts "Hello! My name is #{@name}."
  end
end

# require_relative 'greeting'

class Person
  attr_accessor :name, :age
  include Greeting

  def initialize(name, age)
    @name = name
    @age = age
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

person = Person.new("Dave", 22)
person.greet

=begin

	1) `require_relative` при загрузке относительно пути
	2) `require` при загрузке стандартных (или загруженных) библиотек

=end

puts
puts
puts

# пример: статические методы и переменные класса
# пример: статические методы и переменные класса
# пример: статические методы и переменные класса

class Person
  attr_accessor :name, :age

  # статическая переменная (класса)
  @@count = 0

  def initialize(name, age)
    @name = name
    @age = age
    @@count += 1
  end

  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end

  # статический метод (класса)
  def self.total_count
    @@count
  end
end

person1 = Person.new("Eve", 24)
person2 = Person.new("Frank", 32)

puts "Total number of persons: #{Person.total_count}"

