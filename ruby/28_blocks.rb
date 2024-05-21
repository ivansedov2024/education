
=begin

	1) блоки это одна из самых крутых фишек языка Ruby
	2) блоки позволяют передавать "куски кода" в методы, где они исполняются
	3) блоки задаются по-разному
		а) через скобки          { ... }
		б) через слова           begin ... end

=end

# 1) однострочный блок
[1,2,3,4].each { |elem| print elem.to_s + " " }

puts

# 2) многострочный блок
[10,20,30,40].each do |elem|
	print elem.to_s + " "
end

puts

# 3) методы, которые принимают блоки
# 3) методы, которые принимают блоки
# 3) методы, которые принимают блоки

# 3-1) each
# 3-2) map
# 3-3) select

arr = [1,2,3,4,5,6,7,8,9]

arr.each {
	|number|
	puts "New element = #{number}"
}

double = arr.map {
	|number|
	number * 2
}
puts double

triple = arr.select {
	|elem|
	elem % 3 == 0
}
p triple

# 4) написание своих методов, которые принимают блоки
# 4) написание своих методов, которые принимают блоки
# 4) написание своих методов, которые принимают блоки

# 4-1) yield          он выполняет блок кода, который дали методу
# 4-2) block_given?   возвращает true, если методу передали блок кода
# 4-3) Proc           превращает блок кода в переменную, чтобы ее вызывать много раз


# 4-1) пример про yield
def hello_world_block
	puts "Hello World"
	yield if block_given?
	puts "Chao World"
end

hello_world_block

puts

hello_world_block {
	a = 10
	puts "My favorite number = #{a}"
}

puts

# 4-2) пример про block_given?
def hello_world_block_2
	if block_given?
		yield
	else
		puts "No block - no work!"
	end
end

hello_world_block_2

puts

hello_world_block_2 {
	a = 10
	b = 20
	puts a + b
}

puts

# 4-3) пример про Proc
def my_perfect_function(code)
	puts "Start evaluate..."
	code.call if code
	puts "Finish evaluate..."
end

value = Proc.new {
	a = 10
	b = 20
	puts "#{a} + #{b} = #{a+b}"
}
my_perfect_function(value)