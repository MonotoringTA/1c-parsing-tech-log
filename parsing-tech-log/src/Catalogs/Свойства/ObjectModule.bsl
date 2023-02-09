#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

Процедура ПередЗаписью(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	Если НЕ ЭтоГруппа И НЕ НормализацияЗначения И ЗначениеЗаполнено(ТекстФункцииНормализации) Тогда
		ТекстФункцииНормализации = "";
	КонецЕсли;
	
КонецПроцедуры

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	Если НЕ ЭтоГруппа И НормализацияЗначения Тогда
		ПроверяемыеРеквизиты.Добавить("ТекстФункцииНормализации");
	КонецЕсли;
КонецПроцедуры

Процедура ПриЗаписи(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	ОбновитьПовторноИспользуемыеЗначения();
	
КонецПроцедуры


#КонецЕсли