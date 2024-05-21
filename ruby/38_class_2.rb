
=begin

	1) разберем красивую задачу про классы и объектно-ориентиваронное программирование
	2) допустим, что нам надо реализовать простую библиотечную систему для города
	3) в системе есть два класса: Book (книга), Library (библиотека)

	4) класс Book:

		4-1) title
		4-2) author
		4-3) year

	5) класс Library:

		5-1) добавить книгу (название, автор, год)
		5-2) удалить книгу по названию
		5-3) искать книгу по названию
		5-4) вывести список всех книг

=end

class Book
  attr_accessor :title, :author, :year

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def to_s
    "\"#{title}\" by #{author} (#{year})"
  end
end


class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def remove_book(title)
    @books.reject! { |book| book.title == title }
  end

  def find_book(title)
    @books.select { |book| book.title.include?(title) }
  end

  def display_books
    if @books.empty?
      puts "The library is empty."
    else
      puts "Books in the library:"
      @books.each { |book| puts book }
    end
  end
end


book1 = Book.new("The Hobbit", "J.R.R. Tolkien", 1937)
book2 = Book.new("1984", "George Orwell", 1949)
book3 = Book.new("The Catcher in the Rye", "J.D. Salinger", 1951)

library = Library.new

library.add_book(book1)
library.add_book(book2)
library.add_book(book3)

library.display_books

puts "\nSearching for '1984':"
found_books = library.find_book("1984")
found_books.each { |book| puts book }

library.remove_book("The Hobbit")
library.display_books

=begin

	6) добавить поиск по автору
	7) добавить поиск по году
	8) добавить удаление всех книг автора
	9) добавить выво сколько книг в библиотеке

=end
