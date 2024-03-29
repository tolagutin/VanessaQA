﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

//Сценарий: Изменение количества во всех строках таблицы
//	И для каждой строки таблицы "ItemList" я выполняю используя колонку "N"
//		И в таблице "ItemList" в поле "Количество" я ввожу текст "20,000"

//Сценарий: Удаление строк таблицы
//	И пока в таблице "ItemList" количество строк ">" 0 Тогда
//		И в таблице "ItemList" я удаляю строку
		

//Сценарий: Изменение вида цены по условию
//
//	И для каждой строки таблицы "ItemList" я выполняю
//		Если таблица "ItemList" содержит строки тогда
//				| 'Номенклатура'             | 'Характеристика' | 'Вид цены'          |
//				| 'Товар с характеристиками' | 'S/Красный'      | 'Цена поставщика 1' |
//			И в таблице "ItemList" я перехожу к строке
//				| 'Номенклатура'             | 'Характеристика' | 'Вид цены'          |
//				| 'Товар с характеристиками' | 'S/Красный'      | 'Цена поставщика 1' |
//			И в таблице "ItemList" я выбираю текущую строку
//			И В таблице "ItemList" я нажимаю кнопку выбора у реквизита "Вид цены"
//			И в таблице "List" я перехожу к строке:
//				| 'Валюта' | 'Код' | 'Наименование' | 'Ссылка' |
//				| 'USD'    | '2'   | 'Опт'          | 'Опт'    |
//			И в таблице "List" я выбираю текущую строку
//	И таблица "ItemList" не содержит строки:
//		| 'Номенклатура'             | 'Характеристика' | 'Вид цены'          |
//		| 'Товар с характеристиками' | 'S/Красный'      | 'Цена поставщика 1' |

//Сценарий: Перебор элементов справочника Номенклатура
//	И для каждой строки таблицы "List" я выполняю
//		И в таблице "List" я выбираю текущую строку
//		Тогда не появилось окно предупреждения системы
//		И я закрываю текущее окно
		
Сценарий: Создание элементов в цикле
	И Я запоминаю значение выражения '0' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Ед. изм." + $Шаг$' в переменную "ЕдиницаИзмерения"		
		И я проверяю или создаю для справочника "Units" объекты с обмен данными загрузка истина:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' |
			| '{"e1cib/data/Catalog.Units?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | ''     | 1          | ''          | ''    | '$ЕдиницаИзмерения$' | ''                 | ''               | ''               |          |          |          |          |
		
		
	
			
					
		
		
