﻿Перем БДД;

Функция ПолучитьСписокШагов(КонтекстФреймворкаBDD) Экспорт
	БДД = КонтекстФреймворкаBDD;

	ВсеТесты = Новый Массив;

	ВсеТесты.Добавить("я ничего не делаю");
	ВсеТесты.Добавить("ничего не происходит");

	Возврат ВсеТесты;
КонецФункции

Процедура ЯНичегоНеДелаю(ПарамСтрока) Экспорт
	ДобавитьВЖурнал("ЯНичегоНеДелаю", ПарамСтрока);
КонецПроцедуры

Процедура НичегоНеПроисходит(ДругойПарамСтрока) Экспорт
	ДобавитьВЖурнал("НичегоНеПроисходит", ДругойПарамСтрока);
КонецПроцедуры

Процедура ВсеПутемИ(Парам1, Парам2) Экспорт
	ДобавитьВЖурнал("ВсеПутемИ", Парам1, Парам2);
КонецПроцедуры

Процедура НиктоНичегоНеДелает(Парам1) Экспорт
	ДобавитьВЖурнал("НиктоНичегоНеДелает", Парам1);
КонецПроцедуры

Процедура ДобавитьВЖурнал(Строка, Параметр = "", Параметр2 = "") Экспорт
	Представление = Строка+ПредставлениеПараметра(Параметр)+ПредставлениеПараметра(Параметр2);
	//Сообщить("            нахожусь внутри шага "+Представление);
КонецПроцедуры

Функция ПредставлениеПараметра(Параметр)
	Возврат ?(ПустаяСтрока(Параметр), "", "<"+Параметр+">");
КонецФункции
