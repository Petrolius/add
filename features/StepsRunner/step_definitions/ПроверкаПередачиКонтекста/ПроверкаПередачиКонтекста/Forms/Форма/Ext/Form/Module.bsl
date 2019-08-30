﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	// описание шагов
	//пример вызова Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоместилВСтруктуруКонтекстЗначение(Парам01Строка)","ЯПоместилВСтруктуруКонтекстЗначение","я поместил в структуру Контекст значение ""ТестоваяСтрокаКонтекст""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоместилВСтруктуруКонтекстСохраняемыйЗначение(Парам01Строка)","ЯПоместилВСтруктуруКонтекстСохраняемыйЗначение","я поместил в структуру КонтекстСохраняемый значение ""ТестоваяСтрокаКонтекстСохраняемый""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСмогПрочитатьИзСтруктурыКонтекстЗначение(Парам01Строка)","ЯСмогПрочитатьИзСтруктурыКонтекстЗначение","я смог прочитать из структуры Контекст значение ""ТестоваяСтрокаКонтекст""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСмогПрочитатьИзСтруктурыКонтекстСохраняемыйЗначение(Парам01Строка)","ЯСмогПрочитатьИзСтруктурыКонтекстСохраняемыйЗначение","я смог прочитать из структуры КонтекстСохраняемый значение ""ТестоваяСтрокаКонтекстСохраняемый""");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры


&НаКлиенте
//я поместил в структуру Контекст значение "ТестоваяСтрокаКонтекст"
//@ЯПоместилВСтруктуруКонтекстЗначение(Парам01Строка)
Процедура ЯПоместилВСтруктуруКонтекстЗначение(Значение) Экспорт
	Контекст.Вставить(Значение,Значение);
КонецПроцедуры

&НаКлиенте
//я поместил в структуру КонтекстСохраняемый значение "ТестоваяСтрокаКонтекстСохраняемый"
//@ЯПоместилВСтруктуруКонтекстСохраняемыйЗначение(Парам01Строка)
Процедура ЯПоместилВСтруктуруКонтекстСохраняемыйЗначение(Значение) Экспорт
	КонтекстСохраняемый.Вставить(Значение,Значение);
КонецПроцедуры

&НаКлиенте
//я смог прочитать из структуры Контекст значение "ТестоваяСтрокаКонтекст"
//@ЯСмогПрочитатьИзСтруктурыКонтекстЗначение(Парам01Строка)
Процедура ЯСмогПрочитатьИзСтруктурыКонтекстЗначение(Значение) Экспорт
	ЗначениеКонтекста = Контекст[Значение];
КонецПроцедуры

&НаКлиенте
//я смог прочитать из структуры КонтекстСохраняемый значение "ТестоваяСтрокаКонтекстСохраняемый"
//@ЯСмогПрочитатьИзСтруктурыКонтекстСохраняемыйЗначение(Парам01Строка)
Процедура ЯСмогПрочитатьИзСтруктурыКонтекстСохраняемыйЗначение(Значение) Экспорт
	ЗначениеКонтекстСохраняемый = КонтекстСохраняемый[Значение];
КонецПроцедуры

//окончание текста модуля