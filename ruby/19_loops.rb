
=begin

	1) each          используем активно
	2) for
	3) while
	4) until
	5) loop
	6) times         используем активно
	7) upto
	8) step
	9) each_index
	10) map          используем активно

=end

# 1) each (вместо do ... end можно использовать {...})
(1..10).each do |number|
  puts number
end

# 2) for  (переменная number будет равна крайнему значению)
for number in 1..10
  puts number
end

# 3) while (выполняется пока условие верно)
number = 1
while number <= 10
  puts number
  number += 1
end

# 4) until (выполняется пока условие ложно)
number = 1
until number > 10
  puts number
  number += 1
end

# 5) loop (вечный цикл, выход команда break)
number = 1
loop do
  puts number
  number += 1
  break if number > 10
end

# 6) times (выполняет блок кода заданное число раз)
10.times do |i|
  puts i + 1
end

# 7) upto (итерируется от начального до конечного значения)
1.upto(10) do |number|
  puts number
end

# 8) step (итерация с шагом)
1.step(10, 1) do |number|
  puts number
end

# 9) each_index (итерация по индексам массива)
(1..10).to_a.each_index do |index|
  puts index + 1
end

# 10) map (метод перебора элементов массива и создание нового)
(1..10).map do |number|
  puts number
end






