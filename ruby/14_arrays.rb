
=begin

	1) массив это упорядоченная коллекция объектов (что такое коллекция**)
	2) внутри массива может быть что угодно: число, строка, массив, экземпляр класса
	3) массив можно создать с помощью литерала [] или через метод Array.new 
	4) элементы массива индексируются с нуля, доступ к элементу через []
	5) массивы можно изменять (добавлять, удалять, менять значения)
	6) есть встроенные методы

		6-1) push
		6-2) pop
		6-3) shift
		6-4) unshift
		6-5) concat
		6-6) slice
		6-7) join

	7) по массиву можно итерироваться
	8) можно создавать многомерные массивы

	** коллекция это структура данных, предназначенная для хранения наборов элементов
		- массив
		- хэш
		- множество
		- диапазон

=end

arr1 = [1,2,3,4,5,6,7,8]
arr2 = ['apple', 'banan', 'tomate']
arr3 = Array.new

p arr1
p arr2
p arr3

puts "arr1[1] = " + arr1[1].to_s
puts "arr2[1] = " + arr2[1].to_s
puts "arr3[1] = " + arr3[1].to_s

massiv = [1,2,3]
puts massiv.inspect

# push => добавляет элемент в конец массива
massiv.push(15)
puts massiv.inspect

# pop => удаляет последний элемент (и возвращает его)
last_elem = massiv.pop
puts massiv.inspect
puts last_elem

# shift => удаляет первый элемент (и возвращает его)
first_elem = massiv.shift
puts massiv.inspect
puts first_elem

# unshift => добавление элемента в начало массива
massiv.unshift(25)
puts massiv.inspect

# concat => склейка двух массивов (к 1-ому добавить 2-ой)
a1 = [1,2,3]
a2 = [6,7,8]
a1.concat(a2)
puts "a1 = #{a1}"
puts "a2 = #{a2}"

# slice => взятие части массива (начало, сколько элементов)
sample = [1,2,3,4,5,6,7,8,9,10,11,12]
sample1 = sample.slice(1,3)
sample2 = sample.slice(5,5)
puts "sample = #{sample}"
puts "sample1 = #{sample1}"
puts "sample2 = #{sample2}"

# join => склейка массива в строку (разделитель)
arr = ['I','love','you','my','sweet','baby']
str = arr.join(" ")
puts "str = #{str}"

# разные мелочи
# разные мелочи
# разные мелочи

my_array = [0, 1, 2, 'Hello', true, false]
p my_array

my_array = Array.new(10, 'hello')
p my_array

puts "Size my_array = #{my_array.size}"           # эквивалентные записи
puts "Length my_array = #{my_array.length}"       # эквивалентные записи

sample = [1,2,3]
p sample[-2]
p sample[-20]

# сделать массив из 100 чисел от 0 до 99
sample = (1..99)
p sample                                          # выводит не более 50 элементов
puts sample.inspect                               # (1..99) это не массив, а диапазон

sample = (1..99).to_a                             # to_a превращает диапазон в массив
puts sample.inspect                               # вот так будет выведен массив 1-99 

a1 = (1..10).to_a
a2 = (1...10).to_a
puts a1.inspect
puts a2.inspect
