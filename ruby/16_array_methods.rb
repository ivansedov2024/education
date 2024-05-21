
=begin

	1) each = выполнение блока кода для каждого элемента массива
	2) map = создает новый массив, применяя к каждому элементу некий блок
	3) select = создает новый массив, который содержит только те элементы, для который блок == true
	4) reject = создает новый массив, который содержит только те элементы, для который блок == false
	5) reduce = объединяет элементы массива в один, используя блок
	6) include? = проверяет содержит ли массив указанный элемент
	7) uniq = возвращает новый массив, который одержит только уникальные элементы исходного
	8) sort = возвращает новый массив, который получается из исходного сортировкой
	9) reverse = возвращает новый массив, который получается из исходного переворотом

=end

# 1) each (выполнение кода внутри блока)
puts "\nПример про each"
arr1 = [1, 2, 3, 4, 5]
arr1.each {                           # работаем с массивом 
	|element|                         # каждый элемент будет = element
	puts element                      # выводим на экран element
}

# 2) map (применение функции к блоку)
puts "\nПример про map"
arr2 = [1,2,3,4,5,6,7,8]
new_arr2 = arr2.map {
	|elem|
	elem * 2
}

new_arr2.each {
	|element|
	puts element
}

# функция вывода массива на экран
def print_arr(arr) 
	arr.each { |e| puts e } 
end

# 3) select (новый массив, для которого условие == true)
puts "\nПример про select"
arr3 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
new_arr3 = arr3.select {
	|elem|
	elem.even?
}
print_arr(new_arr3)

# 4) reject (новый массив, для которого условие == false)
puts "\nПример про reject"
arr4 = [110, 200, 300, 50, 60 ,70, -100,-200, -300, 1, 2, 3]
new_arr4 = arr4.reject {
	|elem|
	elem < 100
}
print_arr(new_arr4)

# 5) reduce (объединение элементов массива)
puts "\nПример про reduce"
puts "Найдем произведение всех элементов массива"
arr5 = [1,2,3]
summa = arr5.reduce(1) {
	|res, elem|
	res * elem
}
puts "Result = #{summa}"


# 6) include? (включает ли массив указанный элемент)
puts "\nПример про include?"
arr6 = [1,2,3,4,5,6,7,8]
puts "В нашем массиве число 3 есть: #{arr6.include?(3)}"

# 7) uniq (сделать массив уникальным)
puts "\nПример про uniq"
arr7 = [1,1,1,1,1,1,2,3,3,3,3,3]
new_arr7 = arr7.uniq
p new_arr7 

# 8) sort (сортировка массива)
puts "\nПример про sort"
arr8 = [1,6,4,8,3,0,10]
new_arr8 = arr8.sort
print_arr(new_arr8)

# 9) reverse (разворот массива)
puts "\nПример про reverse"
arr9 = [66,33,1]
new_arr9 = arr9.reverse
print_arr(arr9)
print_arr(new_arr9)