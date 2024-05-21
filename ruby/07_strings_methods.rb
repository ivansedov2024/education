
# split (разбиение строки на массив на основе разделителя)
# 1) разделитель может быть разный (пробел, символ, строка)
# 2) разделитель может быть регулярным выражением

sample = "Hello World"
answer = sample.split(' ')
p answer

sample = "123 456 789 11 22 33"
answer = sample.split(' ')
p answer

qwerty = "papa mama vasja masha"
answer = qwerty.split('a')
p answer

sample = "qqq1www2eee3rrr4"
answer = sample.split(/\d+/)
p answer

# gsub (заменяет все вхождения подстроки в строке на новую строку)
# 1) было АААаааБББааа => (вместо ааа = ббб) => АААбббБББббб
# 2) можно использовать регулярные выражения

sample = "Hello World My World"
answer = sample.gsub('World', 'Universe')
p answer

# важное замечание: если на конце метода!, то он применится к исходной строке
# важное замечание: если на конце метода!, то он применится к исходной строке
# важное замечание: если на конце метода!, то он применится к исходной строке

puts "\n1-ый вариант"
sample = "Hello"
puts "Uppercase: " + sample.upcase!
puts sample

puts "\n2-ой вариант"
sample = "Hello"
sample = sample.upcase!
puts "Uppercase: " + sample
puts sample

# еще раз: если написано sample.method то он применяется на лету
# еще раз: если написано sample.method! то он применяется к sample
# есть еще вариант sample.method?, но про это попозже...