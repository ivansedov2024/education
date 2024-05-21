
=begin

	1) > больше
	2) < меньше
	3) >= больше или равно
	4) <= меньше иди равно
	5) == равно
	6) != не равно

=end

sample1 = 100
sample2 = 100
sample3 = 30

puts sample1 > sample2
puts sample1 < sample1
puts sample3 >= sample1
puts sample1 <= sample2
puts sample3 == sample1
puts sample3 != sample2

a = 10
b = "10"
puts "a == b #{a==b}"

a = 10
b = 10.0
puts "a == b #{a==b}"