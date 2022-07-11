﻿#language: ru



Функционал: Проверка расчета суммы документа Заказ

Как Менеджер по продажам я хочу
Проверить расчет суммы документа Заказ
чтобы суммы были равны

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка расчета суммы документа Заказ

И я закрываю все окна клиентского приложения

* Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение Шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Bosch1234'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '4 000,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверка табличной части
	И я запоминаю значение поля с именем "ТоварыЦена" таблицы "Товары" как "$Цена$"
	И я запоминаю значение поля с именем "ТоварыКоличество" таблицы "Товары" как "$Количество$"
	И Я запоминаю значение выражения 'Формат($Цена$ * $Количество$, "ЧДЦ=2")' в переменную "$Сумма$"
	Тогда таблица "Товары" стала равной:
		| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Bosch1234' | $Цена$ | $Количество$          | $Сумма$ |	
* Проведение документа и закрытие
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд



	
	

