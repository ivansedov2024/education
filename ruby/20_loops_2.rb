
=begin

	Дан массив фруктов на овощебазе (яблоки, груши, апельсины)
	Найти сколько всего на овощебазе продуктов каждого сорта

=end

=begin
arr = ['яблоко','яблоко','груша','апельсин','яблоко','яблоко','груша','апельсин',]

apple = 0
pear = 0
orange = 0

arr.each do |element|
	case element
	when 'яблоко' then apple = apple + 1
	when 'груша' then pear = pear + 1
	when 'апельсин' then orange = orange + 1
	end
end

puts "На овощебазе:\nяблок #{apple}\nгруш #{pear}\nапельсинов #{orange}"
=end


=begin
arr = ['яблоко','яблоко','груша','апельсин','яблоко','яблоко','груша','апельсин',]
answer = arr.each_with_object(Hash.new(0)) do |fruit, arr_hash|
	arr_hash[fruit] += 1
end
puts answer
=end

# для ruby версии >= 2.7 https://try.ruby-lang.org/
arr = ['яблоко', 'яблоко', 'груша', 'апельсин', 'яблоко', 'яблоко', 'груша', 'апельсин']
puts arr.tally
