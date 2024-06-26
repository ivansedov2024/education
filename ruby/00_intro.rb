
=begin

	гипотеза Сепира — Уорфа
	...язык определяет мышление

	Вавилон 17
	...когда она думает на нём, ускоряется метаболизм и замедляется время

	t.ly/uuN07 (ссылка на книгу)


	1) Ruby создан в начале 90-ых годов Юкихиро Мацумото
	健康と幸福 まつもとゆきひろ (здоровья и счастья Юкихиро Мацумото)
	
	2) особенности языка
		2-1) читабельность кода (простой и естественный синтаксис)
		2-2) динамическая типизация (нет строгих типов данных)
		2-3) метапрограммирование (можно менять структуру классов во время работы)
		2-4) богатая стандартная библиотека (не надо устанавливать сторонние)

	3) преимущества языка
		3-1) продуктивность (код пишется быстро)
		3-2) активное сообщество (помощь и консультации)
		3-3) Ruby on Rails (мощный фреймворк для работы)

	4) недостатки языка
		4-1) производительность (хромает из-за динамической типизации)
		4-2) работает сборщик мусора (могут быть проблемы и потери)
		4-3) плохое распространение (Python и Java лидируют в некоторых областях)


		# ==================== начало кода ========================

			arr = Array.new(10) { 
				rand(1..100) 
			}
			p arr
			p arr.sort

		#====================  конец кода ========================


		# ==================== начало кода ========================

			#include <stdio.h>
			#include <stdlib.h>
			#include <time.h>

			#define ARRAY_SIZE 10

			// Функция для обмена значений двух элементов массива
			void swap(int *a, int *b) {
			    int temp = *a;
			    *a = *b;
			    *b = temp;
			}

			// Функция сортировки пузырьком
			void bubbleSort(int arr[], int n) {
			    for (int i = 0; i < n-1; i++) {
			        for (int j = 0; j < n-i-1; j++) {
			            if (arr[j] > arr[j+1]) {
			                swap(&arr[j], &arr[j+1]);
			            }
			        }
			    }
			}

			int main() {
			    int arr[ARRAY_SIZE];

			    // Инициализация генератора случайных чисел
			    srand(time(NULL));

			    // Заполнение массива случайными числами
			    for (int i = 0; i < ARRAY_SIZE; i++) {
			        arr[i] = rand() % 100; // генерация случайного числа от 0 до 99
			    }

			    // Вывод исходного массива
			    printf("Исходный массив случайных чисел:\n");
			    for (int i = 0; i < ARRAY_SIZE; i++) {
			        printf("%d ", arr[i]);
			    }
			    printf("\n");

			    // Сортировка массива
			    bubbleSort(arr, ARRAY_SIZE);

			    // Вывод отсортированного массива
			    printf("Отсортированный массив случайных чисел:\n");
			    for (int i = 0; i < ARRAY_SIZE; i++) {
			        printf("%d ", arr[i]);
			    }
			    printf("\n");

			    return 0;
			}
		#====================  конец кода ========================
	
=end

arr = Array.new(10) { 
	rand(1..100) 
}
p arr
p arr.sort

# ruby -S gem list --local

=begin

Рекомендации молодому программисту:
===================================

1) USE Sublime text editor                     true
2) USE Chrome browser + uBlock plugin          true
3) USE Chrome browser + Dark Reader plugin     true
4) USE Linux, delete Windows                   true
5) CREATE real Name Surname account            true
6) CREATE GitHub + upload all projects         true
7) CREATE Likedin + learn linkedin course      t.ly/Soer9
9) LEARN English + pass examen A1-A2-B1-B2     true
0) LEARN English every day                     necessary

=end