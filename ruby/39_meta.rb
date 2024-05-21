
=begin

	1) метапрограммирование Ruby умеет:

		1-1) ...создает новый код при работе
		1-2) ...меняет часть своего кода при работе

	2) метапрограммирование Ruby позволяет:

		2-1) динамически определять методы при работе
		2-2) менять методы и классы при работе
		2-3) работать с методами и классами на абстрактном уровне

	3) основные концепции:

		3-1) define_method (динамическое определение методов)
		3-2) method_missing (перехват вызовов к несуществующим методам)
		3-3) send, public_send (вызов методов по имени)
		3-4) open classes (открытие классов)
		3-5) eval code (выполнение строкового кода)

=end


# DEFINE METHOD * DEFINE METHOD * DEFINE METHOD
# DEFINE METHOD * DEFINE METHOD * DEFINE METHOD
# DEFINE METHOD * DEFINE METHOD * DEFINE METHOD

# 1) динамическое определение методов
# 1) динамическое определение методов
# 1) динамическое определение методов

class DynamicMethods
  [:foo, :bar, :baz].each do |method_name|
    define_method(method_name) do
      puts "You called the method #{method_name}"
    end
  end
end

obj = DynamicMethods.new
obj.foo
obj.bar
obj.baz

# 1) динамическое определение методов: +10, -10, /10
# 1) динамическое определение методов: +10, -10, /10
# 1) динамическое определение методов: +10, -10, /10

class DynamicMethods
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  {
    increase_by_10:  proc { @value += 10 },
    decrease_by_10:  proc { @value -= 10 },
    divide_by_10:    proc { @value /= 10.0 }
  }.each do |method_name, operation|
    define_method(method_name) do
      instance_exec(&operation)
      puts "You called the method #{method_name}, new value is #{@value}"
    end
  end
end

obj = DynamicMethods.new(100)
obj.increase_by_10
obj.decrease_by_10
obj.divide_by_10

=begin

	1) instance_exec(&operation) <== самая важная строка
	2) instance_exec это метод, который выполняет блок, который ему передают (не может выполнить переменную)
	3) &operation это конверсия блока в объект Proc, т.е. мы передаем переменную как блок кода

=end



# METHOD MISSING * METHOD MISSING * METHOD MISSING
# METHOD MISSING * METHOD MISSING * METHOD MISSING
# METHOD MISSING * METHOD MISSING * METHOD MISSING

# 2) перехват вызовов к несуществующим методам
# 2) перехват вызовов к несуществующим методам
# 2) перехват вызовов к несуществующим методам

class GhostMethod
  def method_missing(name, *args)
    puts "You tried to call #{name} with arguments: #{args.join(', ')}"
  end
end

obj = GhostMethod.new
obj.some_method(1, 2, 3)


# 3) вызов методов по имени
# 3) вызов методов по имени
# 3) вызов методов по имени

class Example
  def greet
    puts "Hello!"
  end

  private

  def secret
    puts "This is a secret."
  end
end

obj = Example.new
obj.send(:greet)
obj.send(:secret)
# obj.greet
# obj.secret



# OPEN CLASSES * OPEN CLASSES * OPEN CLASSES
# OPEN CLASSES * OPEN CLASSES * OPEN CLASSES
# OPEN CLASSES * OPEN CLASSES * OPEN CLASSES

# 4) открытие классов
# 4) открытие классов
# 4) открытие классов

class String
  def shout
    self.upcase + "!!!"
  end
  def patriot
  	self.upcase + " Glory to Russia"
  end
end

puts "hello".shout
puts "hello".patriot



# EVAL CODE * EVAL CODE * EVAL CODE
# EVAL CODE * EVAL CODE * EVAL CODE
# EVAL CODE * EVAL CODE * EVAL CODE

# 5) строковый код
# 5) строковый код
# 5) строковый код

code = "2 + 2"
result = eval(code)
puts result

code = "1 + (3 - 1)/40"             # какое ответ? в чем дело?
result = eval(code)
puts result



