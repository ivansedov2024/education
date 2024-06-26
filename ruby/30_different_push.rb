
=begin

	1) в Ruby есть оператор << (defferent push, влево влево)
	2) он работает по-разному, зависит от контекста

=end

# 1) для склеивания строк
sample = "Hello"
sample << " World"
p sample

# 2) для добавления элемента в массив
arr = [1,2,3]
arr << 12
p arr

# 3) для добавления элемента в объект типа Set
require 'set'

val = Set.new([1,2,3])
val << 4
p val

=begin
	
	1) Set это коллекция уникальных элементов
	2) Set похож на массив, но все элементы уникальные
	3) Set нельзя использовать просто так, ее надо подключить

	4-1) гарантированная уникальность (одинаковые не выживают)
	4-2) вставка, удаление, проверка происходят быстрее, чем в массиве
	4-3) все элементы Set это элеемнты "множества", у него есть операции
		4-3-1) union (объединение)
		4-3-2) intersection (пересечение)
		4-3-3) difference (разность)

	5) самый простой пример: есть массив пользователей, убрать повторы
	6) шаг 1: конвертируем в множество, шаг 2: конвертируем назад в массив

=end

# 4) побитовый сдвиг влево
number = 2
number <<= 1
puts number

=begin

	1) побитовый сдвиг влево <<
		а) все биты сдвигаются влево на указанное число
		б) биты справа заменяются (приходящими) нулями

		2         10
		2 << 1    побитовый сдвиг влево на 1
		4         100

	2) побитовый сдвиг вправо >>
		а) все биты сдвигаются вправо на указанное число
		б) биты слева заменяются 0 (ну, есть их нет)

		8         1000
		8 >> 2    побитовый сдвиг вправо на 2
		2         10

=end