﻿#language: ru

@tree

Функционал: Загрузка тестовых данных

Сценарий: Загрузка тестовых данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка Констант

	И я перезаполняю константу "SSLIMAP" значением "False"
	И я перезаполняю константу "SSLPOP3" значением "False"
	И я перезаполняю константу "SSLSMTP" значением "False"
	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
	И я перезаполняю константу "ИспользоватьIMAP" значением "False"
	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
	И я перезаполняю константу "ИспользоватьAPNS" значением "False"
	И я перезаполняю константу "ИспользоватьFCM" значением "False"
	И я перезаполняю константу "ИспользоватьWNS" значением "False"
	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
	И я перезаполняю константу "ИспользоватьСпутники" значением "False"
	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
	И я перезаполняю константу "ПортPOP3" значением "110"
	И я перезаполняю константу "ПортSMTP" значением "25"
	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
	И я перезаполняю константу "ТолькоБесплатные" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: Загрузка Организаций

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |

Сценарий: Загрузка Контрагентов


	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |		

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'         | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка'      | '14'  | '+7(999)528-96-21' | 'techno@techno.ru' | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000004' | 'Шлюзовая ООО'              | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121344' | 'Россия' | 'Москва'          | 'Шлюзовая наб.' | '6'   | '+7(999)233-33-22' | 'sluz@jmail.ru'    | '+7(999)233-33-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Горохов В. Х.'   | 55.731272 | 37.645777 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                | ''                                                                   | ''       | ''       | ''                | ''              | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная' | '12'  | '+7(999)623-568' | 'mak@jmail.ru'     | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'     | ''                                                                   | ''       | ''       | ''             | ''       | ''    | ''               | ''                 | ''     | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'          |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'         |

	
Сценарий: Загрузка Номенкатуры

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000018' | 'Bosch15'       | 'Ч-0002'  | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style=" font-weight: bold;">Потребляемая мощность</span> - 2400 Вт</p>\n<p><span style=" font-weight: bold;">Максимальный  объем </span>- 1.7 л</p>\n<p><span style=" font-weight: bold;">Минимальный объем</span> - 0.5 л</p>\n<p><span style=" font-weight: bold;">Фильтр от накипи </span>- из нержавеющей стали</p>\n<p><span style=" font-weight: bold;">Материал корпуса</span> - пластик</p>\n<p><span style=" font-weight: bold;">Материал ручки </span>- пластик</p>\n<p><span style=" font-weight: bold;">Цвет</span> - белый</p>\n<p><span style=" font-weight: bold;">Вес</span> - 1 кг</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - КНР</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000022' | 'Veko67NE'      | 'Ч-0003'  | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style=" font-weight: bold;">Потребляемая мощность </span> - 2200 Вт</p>\n<p><span style=" font-weight: bold;">Максимальный  объем </span>- 1.7 л</p>\n<p><span style=" font-weight: bold;">Минимальный объем</span> - 0.5 л</p>\n<p><span style=" font-weight: bold;">Материал корпуса</span> - пластик</p>\n<p><span style=" font-weight: bold;">Материал ручки </span>- пластик</p>\n<p><span style=" font-weight: bold;">Цвет</span> - бежевый</p>\n<p><span style=" font-weight: bold;">Вес</span> - 0.8 кг</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - КНР</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000013' | 'Чайники'       | ''        | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |

	// РегистрСведений.ЦеныТоваров

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '18.12.2018 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 2700   |
		| '19.12.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 3000   |
		| '19.12.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 3200   |
		| '19.12.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa19' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 4500   |
		| '25.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 7000   |
		| '25.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 12000  |
		| '25.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 10000  |
		| '25.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9c500055d49b45e11dbf348086715b1' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 15000  |
	
Сценарий: Загрузка Валюты

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

Сценарий: Загрузка Складов

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |






