
age = 65
case age
when 0..18
	puts "Несовершеннолетний"
when 19..27
	puts "Военнообязанный"
when 28...65
	puts "В запасе"
else
	puts "В глубоком запасе"
end

puts "Введите язык (rus, eng, fra)"
lang = gets.chomp
case lang
when "eng" then puts "Hello!"
when "rus" then puts "Привет!"
when "fra" then puts "Bonjour!"
else puts "Я не знаю такого языка!"
end
