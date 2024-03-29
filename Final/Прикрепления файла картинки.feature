﻿#language: ru

@tree

Функционал: _0001 Проверка прикрепления файла картинки

Как Тестировщик я хочу
Для формы элемента справочника Товар проверить возможность прикрепления файла картинки
чтобы у пользователя не возникало ошибок при добавлении картинки 

Переменные:
	НаименованиеКартинки = "Picture.png"
Контекст:
		И Я подключаю клиент тестирования "Администратор" из таблицы клиентов тестирования

Сценарий: _0001 Проверка прикрепления файла картинки
	И я закрываю все окна клиентского приложения
	
	* Позиционируемся на элементе без картинки
		Дано Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'  | 'Код'       | 'Артикул' | 'Поставщик'      | 'Вид'   | 'Вес' |
			| 'Bosch1234'     | '000000017' | 'Ч-0001'  | 'ЭлектроБыт ЗАО' | 'Товар' | ''    |
		И в таблице "Список" я выбираю текущую строку	
		
	* Добавляем/Выбираем файл
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		Тогда открылось окно 'Файлы'
		
		Если в таблице "Список" нет строки Тогда
			| 'Наименование'           |
			| '$НаименованиеКартинки$' |

			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Файл (создание)'
			И я выбираю файл "$КаталогПроекта$\Final\Files\$НаименованиеКартинки$"
			И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'	
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			Тогда открылось окно 'Файлы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'           |
			| '$НаименованиеКартинки$' |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	
	* Проверка привязки файла картинки
		Тогда элемент формы с именем "ФайлКартинки" стал равен '$НаименованиеКартинки$'
		И у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=*' по шаблону
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
	
	* Проверка наличия файла по гиперссылке Файлы
		И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
		И таблица "Список" содержит строки по шаблону
			| 'Наименование'           |
			| '$НаименованиеКартинки$' |