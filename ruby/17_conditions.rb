
=begin

	1) conditions это условия, которые встречаются в программе
	2) у нас есть if, else, elsifm unless, case и тернарный оператор

=end

# 1) if
a = 25
if a == 25
	puts "Okey"
end

# 2) else
a = 30
if a == 25
	puts "Okey"
else	
	puts "Amsterdam"
end

# 3) elsif
a = 30
b = 20
if a == b
	puts "a == b"
elsif a > b
	puts "a > b"
else
	puts "a < b"
end

# 4) case (несколько условий)
a = 2
case a
when 1..3
	puts "Первый квартал"
when 4..6
	puts "Второй квартал"
when 7..9
	puts "Третий квартал"
when 10..12
	puts "Четвертый квартал"
else
	puts "Вы ввели неверный номер месяца"
end

# 5) unless
a = "Hello"
unless a == "Welcome"
	puts "This is normal"
end

# 6) тернарный оператор
age = 15
access = age >= 18 ? "yes" : "no"
puts access 

# 7) || оператор
# sample = "Amsterdam"
sample = sample || "one"
puts sample