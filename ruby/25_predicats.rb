
=begin
	
	1) предикаты и банговские методы это часть концепции Ruby
	2) концепция заключается в улучшении читабельности кода
	3) Predicates (предикаты) это методы, котоыре возвращают true | false

		3-1) empty?
		3-2) nil?
		3-3) even?
		3-4) odd?
		3-5) include?
		3-6) zero?
		3-7) start_with?
		3-8) end_with?

	4) Bang Methods (воcклицательные методы), действия с побочными эффектами

		4-1) ...
		4-2) ...
		4-3) ...

	
=end

# Predicates
# Predicates
# Predicates

# пустой ли объект
sample = []
puts sample.empty?

# является ли объект nil
nothing = nil
one = 1
puts nothing.nil?
puts one.nil?

# четное, нечетное число
a = 10
b = 11
puts a.even?
puts a.odd?

# содержит ли объект некий элемент
sample = [1,2,3,4]
puts sample.include?(10)
puts sample.include?(1)

# является ли элемент = 0
my_zero1 = 0
my_zero2 = 15
puts my_zero1.zero?
puts my_zero2.zero?

city = "Amsterdam the is great city"
puts city.start_with?('A')
puts city.start_with?('Paris')
puts city.end_with?('city')
puts city.end_with?('kill')


# Bang Methods
# Bang Methods
# Bang Methods

my_perfect_hash = {
	:moscow => "Russia"
}
puts my_perfect_hash

# 1) update (обновление данных), без восклицательного знака!
my_perfect_hash.update(:moscow => "Russian Federation")
puts my_perfect_hash

# 2) merge! (это аналог update с восклицательным знаком)
my_perfect_hash.merge!(:moscow => "RUSSIA")
puts my_perfect_hash

# 3) map! (изменение коллекции с применением блока)
arr = [1,2,3]
arr.map!{ |elem|
	elem * 2
}
puts arr

# 4) strip! (удаляет пробельные символы с обоих концов)
sample = " Hello!  "
p sample
sample.strip!
p sample

# 5) delete! (удаляет все вхождения символов из строки)
sample = "I love you baby, you my perfect, you best"
sample.delete!("you")
puts sample

# 5) compact! (удаляет все nil из массива)
value = [1,2,nil,3,nil,4,5,6,7,nil,nil]
p value
value.compact!
p value