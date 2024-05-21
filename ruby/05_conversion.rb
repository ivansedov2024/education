
=begin

	Мы можем конвертировать данные из одного типа в другой
		1) to_i (конвертировать в Integer)
		1) to_s (конвертировать в String)
		1) to_f (конвертировать в Float)
		1) to_a (конвертировать в Array)
		1) to_r (конвертировать в Rational)
		1) to_c (конвертировать в Complex)

=end

val1 = 10.5
puts val1

val1 = val1.to_i
puts val1

val1 = val1.to_s
puts val1

val1 = val1.to_f
puts val1

# конвертация в массив из разных данных

# из хэша в массив
hash1 = {
	"a" => 1,
	"b" => 2,
	"c" => 3,
}
puts hash1
hash1 = hash1.to_a
puts hash1
p hash1

# из строки в массив
string1 = "Hello World!"
string1 = string1.chars.to_a
p string1

# из диапазона в массив
range1 = (1..10)
puts range1
p range1

range1 = range1.to_a
puts range1
p range1

# конвертация в рациональное число

val1 = 10
val1 = val1.to_r
puts val1

val2 = 10.1
val2 = val2.to_r
puts val2

string1 = "11/5"
string1 = string1.to_r
puts string1

string2 = "Hello"
string2 = string2.to_r
puts string2

# конвертация в комплексные числа

com1 = 10
com1 = com1.to_c
puts com1

com2 = 3.14
com2 = com2.to_c
puts com2

com3 = "15+4i"
com3 = com3.to_c
puts com3

puts 15.5.to_i
puts "12 apples".to_i
puts 12.22.to_s + " minutes"

sample1 = 10 + 4i
sample1 = sample1 + 5.to_c
puts sample1