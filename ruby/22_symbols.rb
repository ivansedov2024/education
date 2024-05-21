
=begin

	1) символы это легковесные неизменяемые объекты (id, метка, ключ)
	2) использование символов вместо строк повышает производительность
	3-1) символы иммутабельны, т.е. неизменемые (значения не меняются после создания)
	3-2) символы уникальны, т.е. каждый символ есть в памяти один раз
	3-3) из-за 1 и 2 символы более быстрые, чем троки при сравнениях и идентификации
	4) символы имеют : перед именем при создании (:name)

=end

sample1 = :ruby
sample2 = "ruby"
puts sample1
puts sample2

# замечание: прямо сейчас у нас есть 4 объекта (не два, а именно четыре)

# 1) sample1
# 2) sample2
# 3) :ruby
# 4) "ruby"

puts "Выводим идентификатор объекта:"

puts "1) sample1 = #{sample1.object_id}"
puts "2) sample2 = #{sample2.object_id}"
puts "3) :ruby = #{:ruby.object_id}"
puts '4) "ruby" = ' + "ruby".object_id.to_s

s1 = :hello
s2 = :hello
s3 = "Hello World"
s4 = "Hello World"

p s1.object_id
p s2.object_id
p s3.object_id
p s4.object_id

# Использование символов:
# Использование символов:
# Использование символов:

# 1) как ключи в хэшах
# 2) как вызов методов метапрограммирования

# про ключи в хэшах

# вариант 1
# person = {
# 	name: "Homer Simpson",
# 	age: 40,
# 	cite: "Springfild"
# }

# вариант 2
person = {
	:name => "Homer Simpson",
	:age => 40,
	:cite => "Springfild"
}

puts person[:cite]

# про методы в классах
class Greeter
  def hello
    "Hello!"
  end

  def goodbye
    "Goodbye!"
  end
end

greeter = Greeter.new
puts greeter.send(:hello)    # => "Hello!"
puts greeter.send(:goodbye)  # => "Goodbye!"


# Разница между символами и строками:
# Разница между символами и строками:
# Разница между символами и строками:

# 1) строки можно изменить, символы нельзя изменить
# 2) одинаковые строки это разные объекты
# 3) одинаковые символы это одинаковые объекты

sample = "Hello "
sample << "world"
puts sample

hero = :batman
# hero << " luser"
puts hero

string1 = "Amsterdam"
string2 = "Amsterdam"
puts string1.object_id == string2.object_id

sym1 = :Amsterdam
sym2 = :Amsterdam
puts sym1.object_id == sym2.object_id

# Использование:
# Использование:
# Использование:

# 1) если надо часто сравнивать строковые данные, то надо делать символы
# 2) если использовать символы, то програмист видит, что данные не изменяемы