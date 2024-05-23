
Задание 1
=========

Описание задания
Напишите программу на языке Ruby, которая выполняет следующие задачи:

Создайте класс Calculator, который содержит методы для выполнения основных арифметических операций (сложение, вычитание, умножение, деление).
Используйте yield для передачи блока, который выполняет дополнительные вычисления с результатом каждой операции.
Добавьте обработку исключений для деления на ноль.
Включите в класс методы, которые используют proc и lambda для выполнения различных арифметических операций (например, возведение в степень и вычисление квадратного корня).
Создайте экземпляр класса Calculator и вызовите все методы, демонстрируя их работу с использованием блоков, proc, lambda и обработкой исключений.

calculator = Calculator.new
calculator.add(10, 5) { |result| puts "Addition result: #{result}" }
calculator.subtract(10, 5) { |result| puts "Subtraction result: #{result}" }
calculator.multiply(10, 5) { |result| puts "Multiplication result: #{result}" }
calculator.divide(10, 0) { |result| puts "Division result: #{result}" }
calculator.power(2, 3) { |result| puts "Power result: #{result}" }
calculator.sqrt(16) { |result| puts "Square root result: #{result}" }


Задание 2
=========

Описание задания
Напишите программу на языке Ruby, которая выполняет следующие задачи:

Создайте класс Library, который содержит атрибут books (хэш, где ключом является название книги, а значением — её количество).
Добавьте методы для добавления книг, взятия книг и возврата книг, используя proc и lambda.
Используйте метод с yield для выполнения дополнительных действий с библиотекой.
Добавьте обработку исключений для случаев, когда количество книг становится отрицательным.
Создайте экземпляры класса Library и вызовите все методы, демонстрируя их работу с использованием блоков, proc, lambda и обработкой исключений.

library = Library.new

# Добавляем книги
library.add_book("Harry Potter", 10) { |books| puts "Books after adding: #{books}" }
library.add_book("The Hobbit", 5) { |books| puts "Books after adding: #{books}" }

# Берем книги
library.take_book("Harry Potter", 3) { |books| puts "Books after taking: #{books}" }
library.take_book("The Hobbit", 7) { |books| puts "Books after taking: #{books}" }

# Возвращаем книги
library.return_book("Harry Potter", 2) { |books| puts "Books after returning: #{books}" }

# Обновляем книги с использованием блока
library.update_books do |books|
  books["The Hobbit"] = 10
  puts "Books after update: #{books}"
end

library.display_books