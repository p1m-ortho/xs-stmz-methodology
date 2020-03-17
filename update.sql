update /* Добавляет дату импорта записей в БД. Отображается в FT. Очевидно, надо выполнять непосредственно после импорта. */ `ft_form_12`
set submission_date = now()
where submission_date = '0000-00-00 00:00';

update /* Меняет формат дат поступления, выписки и рождения на ГГГГ-ММ-ДД ЧЧ:ММ, и хотя формат поля остается текстовым, становится правильной сортировка по этому полю. */ `ft_form_12`
set col_8 = if(str_to_date(col_8,'%d.%m.%Y %H:%i') is not null, str_to_date(col_8,'%d.%m.%Y %H:%i'), col_8), col_9 = if(str_to_date(col_9,'%d.%m.%Y %H:%i') is not null, str_to_date(col_9,'%d.%m.%Y %H:%i'), col_9), col_7 = if(str_to_date(col_7,'%d.%m.%Y') is not null, str_to_date(col_7,'%d.%m.%Y'), col_7);
