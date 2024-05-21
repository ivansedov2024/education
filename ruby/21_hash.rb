
=begin

	1) хэш это коллекция пар (ключ, значение)
	2) особенность: он позволяет хранить и быстро получать доступ к данным
	3) хэш используют, если надо связать данные разной природы

=end

# 1) создание хэша
fruits1 = {
	"apple" => 1,
	"orange" => 2,
	"qiwi" => 5,
}
puts fruits1

fruits2 = {
	batman: 1954,
	superman: 1955,
	spiderman: 1954
}
puts fruits2

# 2) доступ к элементам хэша (нет понятия первый элемент, они в куче)
puts "Первый элемент хэша fruits1 = #{ fruits1['apple'] }"
puts "Второй элемент хэша fruits1 = #{ fruits1['orange'] }"
puts "Элемент хэша fruits2 = #{ fruits2[:superman] }"

# 3) добавление и обновление элементов
fruits1['apple'] = 12
puts fruits1
fruits1['banan'] = 13
puts fruits1

fruits2[:superman] = 1977
puts fruits2

# 4) удаление элементов
fruits1.delete('qiwi')
puts fruits1

# 5) итерация по хэшу: each
# 5) итерация по хэшу: each_key
# 5) итерация по хэшу: each_value

fruits2.each do |name, year|
	puts "Персонаж #{name} год выхода комикса #{year}"
end

# 6) метод работы: keys (все ключи, которые есть в хэше)
# 6) метод работы: values (все значения, которые есть в хэше)
# 6) метод работы: has_key? (есть ли такой ключ?)
# 6) метод работы: has_value? (есть ли такое значение?)
# 6) метод работы: merge (объединяет два хэша)

puts "Все ключи: #{ fruits2.keys }"
puts "Все значения: #{ fruits2.values }"
puts "Есть ли такой ключ как :joker? #{ fruits2.has_key?(:joker) }"
puts "Есть ли такой ключ как :batman? #{ fruits2.has_key?(:batman) }"
puts "Есть значение 2005? #{ fruits2.has_value?(2005) }"
puts "Есть значение 1954? #{ fruits2.has_value?(1954) }"

h1 = {
	mango: 10,
	qiwi: 20,
	banan: 10
}
h2 = {
	orange: 10,
	ananas: 20,
	banan: 100

}
hhh = h1.merge(h2)
puts hhh

# замечание: есть метод fetch (доступ к элементу)
heros = {
	superman: 10,
	batman: 20,
	aquaman: 30,
}
p heros[:superman]
p heros[:joker]
p heros.fetch(:joker, 15)

heros.fetch(:joker) { |key|
	puts "Я не смог найти ключ #{key}"
	puts "Может быть, вас устроит значение 15?"
}