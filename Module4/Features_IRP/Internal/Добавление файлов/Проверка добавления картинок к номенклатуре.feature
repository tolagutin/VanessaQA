﻿#language: ru

@tree

Функционал: Проверка добавления картинки в справочник Номенклатура

Как Менеджер я хочу
добавить картинки к номенклатуре 
чтобы можно было посмотреть как выглядит товар 

Контекст:

	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0501 Подготовительный (Добавление картинок)
	Когда экспорт основных данных
	Когда экспорт настроек картинок
	И Я устанавливаю в базу расширение из файла "$КаталогПроекта$\Module4\Features_IRP\Additional\IRP_TestExtension.cfe"
	
Сценарий: _0502 Проверка добавления картинки
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d"
	И я выбираю файл "$КаталогПроекта$\Module4\Features_IRP\Files\itempicture1.png"

		

