
Задание 1
=========

Описание задания
Напишите программу на языке Ruby, которая выполняет следующие задачи:
Создает хэш, где ключами будут символы, представляющие категории продуктов (например, :фрукты, :овощи, :молочные продукты), а значениями — массивы с названиями продуктов в этих категориях.
Запрашивает у пользователя категорию и название продукта, добавляет продукт в соответствующую категорию.
Создает и вызывает функцию, которая сортирует продукты внутри каждой категории по алфавиту.
Использует блок для вывода всех продуктов, которые начинаются с заданной буквы.
Создает и вызывает функцию, которая принимает хэш, сортирует категории по количеству продуктов в каждой и выводит отсортированный хэш.

Пример выполнения
Программа должна работать следующим образом:

Исходный хэш:
{:фрукты=>["яблоко", "банан", "киви"], :овощи=>["морковь", "картофель"], :молочные_продукты=>["молоко", "сыр"]}
Введите категорию продукта: фрукты
Введите название продукта: апельсин
Хэш с добавленным продуктом:
{:фрукты=>["яблоко", "банан", "киви", "апельсин"], :овощи=>["морковь", "картофель"], :молочные_продукты=>["молоко", "сыр"]}
Сортировка продуктов по алфавиту внутри каждой категории:
{:фрукты=>["апельсин", "банан", "киви", "яблоко"], :овощи=>["картофель", "морковь"], :молочные_продукты=>["молоко", "сыр"]}
Введите букву для поиска продуктов: м
Продукты, начинающиеся с буквы 'м':
морковь
молоко
Сортировка категорий по количеству продуктов:
{:овощи=>["картофель", "морковь"], :молочные_продукты=>["молоко", "сыр"], :фрукты=>["апельсин", "банан", "киви", "яблоко"]}


Задание 2
=========

Описание задания
Напишите программу на языке Ruby, которая выполняет следующие задачи:
Создает хэш, где ключами будут символы, представляющие названия книг, а значениями — массивы с информацией о книгах (автор, год издания, рейтинг).
Запрашивает у пользователя название книги, автора, год издания и рейтинг, добавляет книгу в хэш.
Создает и вызывает функцию, которая сортирует книги внутри хэша по году издания.
Использует блок для вывода всех книг с рейтингом выше заданного значения.
Создает и вызывает функцию, которая принимает хэш, сортирует книги по названию и выводит отсортированный хэш.

Пример выполнения
Программа должна работать следующим образом:

Исходный хэш:
{:"Война и мир"=>["Толстой", 1869, 4.5], :"Преступление и наказание"=>["Достоевский", 1866, 4.8], :"Анна Каренина"=>["Толстой", 1877, 4.7]}
Введите название книги: Идиот
Введите автора книги: Достоевский
Введите год издания: 1869
Введите рейтинг: 4.6
Хэш с добавленной книгой:
{:"Война и мир"=>["Толстой", 1869, 4.5], :"Преступление и наказание"=>["Достоевский", 1866, 4.8], :"Анна Каренина"=>["Толстой", 1877, 4.7], :"Идиот"=>["Достоевский", 1869, 4.6]}
Сортировка книг по году издания:
{:"Преступление и наказание"=>["Достоевский", 1866, 4.8], :"Война и мир"=>["Толстой", 1869, 4.5], :"Идиот"=>["Достоевский", 1869, 4.6], :"Анна Каренина"=>["Толстой", 1877, 4.7]}
Введите минимальный рейтинг для поиска книг: 4.6
Книги с рейтингом выше 4.6:
Преступление и наказание
Анна Каренина
Идиот
Сортировка книг по названию:
{:"Анна Каренина"=>["Толстой", 1877, 4.7], :"Война и мир"=>["Толстой", 1869, 4.5], :"Идиот"=>["Достоевский", 1869, 4.6], :"Преступление и наказание"=>["Достоевский", 1866, 4.8]}