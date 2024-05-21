
array1 = [
	[1,2,3],
	[4,5,6],
	[7,8,9]
]

p array1

puts array1[1][1]
puts array1[1][0]

array1.each do |row|
	puts "Новый массив"
	row.each do |elem|
		puts "element = " + elem.to_s
	end
end