
=begin

	1) напишите функцию, которая получает несколько символов
	2) функция должна вывести на экран последний переданный символ

=end

def last_symbol(*args)
	size = args.length
	puts args[size-1]
end

last_symbol(:one, :two, :three, :batman)

def last_symbol_2(*args, last)
	puts last
end

last_symbol_2(:one, :two, :three, :batman)