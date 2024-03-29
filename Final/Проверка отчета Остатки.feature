﻿#language: ru

@tree

Функционал: _0002 Проверка отчета Остатки

Как Тестировщик я хочу
проверить формирование отчета Остатки
чтобы убедиться в формировании отчета 

Контекст:
	И Я подключаю клиент тестирования "Администратор" из таблицы клиентов тестирования

Сценарий: _0002 Проверка отчета Остатки (Основной вариант)
	И я закрываю все окна клиентского приложения
	
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
	Тогда открылось окно 'Остатки товаров'
	И в табличном документе 'Результат' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И в таблице "СписокНастроек" я выбираю текущую строку
	И Пауза 10
	Тогда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду когда в табличном документе "Результат" заполнится ячейка "R26C6" в течение 10 секунд