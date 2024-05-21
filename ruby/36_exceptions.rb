
=begin

	1) exceptions (исключения) это механимы обработки ошибок времени исполнения
	2) механизм прост: когда возникает ошибка, Ruby передает управление блоку Rescue
	3) концепции исключении
		3-1) создание исключений (через класс Exception или его подклассы)
			3-1-1) StandardError
			3-1-2) RuntimeError
			3-1-3) NoMethodError
			3-1-4) и прочие...
		3-2) генерация исключений (через слово raise)
		3-3) обработка исключений (внутри блока begin-rescue-end)

=end

# 1) пример 1: деление на ноль
def divide(a, b)
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "Error: Division by zero is not allowed."
    return nil
  end
  result
end

puts divide(10, 2)
puts divide(10, 0)


puts


# пример 2: обработка отсутствующего файла
begin
  file = File.open("secret.txt")
rescue Errno::ENOENT => e
  puts "Error: File not found."
end


puts


# пример 3: завершающие действия
def read_file(filename)
  begin
    file = File.open(filename)
    contents = file.read
    puts contents
  rescue Errno::ENOENT => e
    puts "Error: File not found."
  ensure
    file.close if file
  end
end

read_file("secret.txt")
read_file("secret1.txt")


puts


# пример 4: повторное создание исключений
def connect_to_server
  begin
    raise "not server"
  rescue => e
    puts "Error function: #{e.message}"
    raise
  end
end

begin
  connect_to_server
rescue => e
  puts "Error root: #{e.message}"
end


puts


# пример 5: создание своих исключений
class MyCustomError < StandardError
end

def risky_method
	puts "Working..." 
	puts "Working..." 
	puts "Working..." 
 	raise MyCustomError, "катастрофа..."
	puts "Working..." 
	puts "Working..." 
	puts "Working..."
end

begin
 	risky_method
rescue MyCustomError => e
 	puts "Моя ошибка: #{e}"
end

