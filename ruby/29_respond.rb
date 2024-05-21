
=begin

	1) respond_to? это метод, который позволяет сказать откликнется ли объект на какой-то метод
	2) другими словаи: реализован ли этот метод у данного объекта
	4) метод respond_to? важен, если мы работаем с объектами через интерфейсы

	object.respond_to?(:method_name)

=end

# 1) для чисел
val = 10
puts val.respond_to?(:uppercase)
puts val.respond_to?(:to_s)
puts val.respond_to?(:next)
val = val.next
puts val

# 2) для строк
sample = "Hello World"
puts sample.respond_to?(:uppercase)
puts sample.respond_to?(:upcase)
puts sample.respond_to?(:upcase!)
puts sample.respond_to?(:killhumanearth)
puts sample.respond_to?(:to_s)
sample.upcase!
puts sample

# 3) для массива
arr = [1,2,3,4]
puts arr.respond_to?(:upcase)
puts arr.respond_to?(:push)
arr.push(15)
p arr

# 4) для классов
class Dog
  def bark
    puts "Woof!"
  end
end

puts "Реализация методов для классов%"
dog = Dog.new
puts dog.respond_to?(:bark)
puts dog.respond_to?(:meow)

10.times {
	dog.bark
}

# замечание: у классов могут быть скрытые методы, тогда метод покажет false
# замечание: этого можно избежать, если использовать respond_to?(:name, true)
