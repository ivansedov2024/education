
=begin

	1) когда мы пишем новый класс, то внутри него есть разные методы
	2) как минимум мы знаем о том, что есть методы класса и экземпляра класса

		class Student
			def self.method1
				"Method Class"
			end
			def method2
				"Method exemplar class"
			end
		end

		user = Student.new
		puts Student.method1           # вызов метода класса
		puts user.method2              # вызов метода экземпляра класса

	3) на самом деле этих методов гораздо больше

		3-1) приватные                 почти одно и тоже
		3-2) защищенные                почти одно и тоже
		3-3) публичные                 всем доступно
		3-4) статические
		3-5) обычные

=end


# Public Methods (публичные методы)
# Public Methods (публичные методы)
# Public Methods (публичные методы)


# публичные методы можно вызвать из любого места (класса, экземпляра)


class MyClass
	def public_method
		puts "Я публичный метод! Вызывайте кто хотите!"
	end
	def public_method_method
		puts "Я еще один публичный метод! Я позову друга..."
		public_method
	end
end


object1 = MyClass.new
object1.public_method
object1.public_method_method


# Protected Methods (защищенные методы)
# Protected Methods (защищенные методы)
# Protected Methods (защищенные методы)


# защищенные методы можно вызвать только внутри методов этого класса
# защищенные методы нельзя вызвать напрямую на экземпляре класса


# class MyClass
# 	def call_protected_method
# 		protect_method
# 	end

# 	protected

# 	def protect_method
# 		puts "Я защищенный метод! Меня нельзя вызвать просто так!"
# 	end
# end

# object2 = MyClass.new
# object2.call_protected_method       # ОК  
# object2.protect_method              # нельзя


# Private Methods (приватные методы)
# Private Methods (приватные методы)
# Private Methods (приватные методы)

# приватные методы можно вызвать только внутри других методов того же экземпляра
# приватные методы нельзя вызвать с явным указателем получателя (self)


# class MyClass
#   def call_private
#     private_method
#   end

#   private

#   def private_method
#     puts "Я приватный метод!"
#   end
# end

# obj = MyClass.new
# obj.call_private                      # OK
# obj.private_method                    # нельзя 


=begin

	4) в чем разница между приватными и защищенными методами?
	5) в чем разница между private      protected 

		private (приватные методы)
		==========================
			- если надо спрятать метод от объекта
			- если надо вызвать метод только внутри другого метода

		protected (защищенный метод)
		============================
			- если надо спрятать метод от объекта, но...
			- его можно вызвать через метод внутри другого метода
			- и другой объект тоже может его вызвать через метод внутри другого метода

=end


# class Person
# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end

# 	def compare_age(other_person)
# 		if other_person.age > self.age
# 			puts "#{other_person.name} старшем чем мы #{self.name}"
# 		else
# 			puts "#{other_person.name} младше чем мы #{self.name}"

# 		end
# 	end

# 	protected

# 	def age
# 		@age
# 	end
# 	def name
# 		@name
# 	end
# end

# pers1 = Person.new("Polina", 30)
# pers2 = Person.new("Marina", 45)
# pers1.compare_age(pers2)

# puts pers1.age                         # ошибка


# Class Methods (статические методы)
# Class Methods (статические методы)
# Class Methods (статические методы)

# статические методы вызываются на классе, а не на экземпляре
# статические методы это те, у которых в начале стоит self


# class MyClass
# 	def method1
# 		"Я простой и открытый метод, вызывайте с экземпляра!"
# 	end
# 	def self.method2
# 		"Я метод класса, вызывайте меня только от класса!"
# 	end
# end

# obj = MyClass.new

# puts obj.method1            # Ok
# puts obj.method2            # Error

# puts MyClass.method2        # Ok
# puts MyClass.method1        # Error


# Instance Methods (обычные методы)
# Instance Methods (обычные методы)
# Instance Methods (обычные методы)

# обычные методы вызываются на экземпляре класса
# обычные методы: 1) публичные, 2) защищенные, 3) приватные


# Комплексный пример, включающий все виды методов
# Комплексный пример, включающий все виды методов
# Комплексный пример, включающий все виды методов
# Комплексный пример, включающий все виды методов
# Комплексный пример, включающий все виды методов


# class World
# 	def initialize(value)
# 		@value = value
# 	end
# 	def puclic_method
# 		puts "Публичный метод (кладбище), значение = #{@value}"
# 		call_protected
# 		call_private
# 	end

# 	protected

# 	def protected_method
# 		puts "Защищенный метод (ад), значение = #{@value}"
# 	end
# 	def call_protected
# 		protected_method
# 	end

# 	private

# 	def private_method
# 		puts "Приватный метод (рай), значение = #{@value}"
# 	end
# 	def call_private
# 		private_method
# 	end

# 	# static

# 	def self.class_method
# 		puts "Метод класса (страшный суд)"
# 	end	
# end

# user = World.new(99)
# user.puclic_method

# World.class_method

# попробуем вызвать защищенный метод напрямую
# user.protected_method

# попробуем вызвать приватный метод напрямую
# user.private_method