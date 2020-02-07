# METHOD.md

## Оцифровка опросников

Также начата [первая работа по анализу наших опросников](https://github.com/p1m-ortho/xc-led-dzhanelidze-proms-and-croms/commit/294e9ee1b7b25502eb0594b729081293afbd8920#diff-79ce089d0aaf683a70edd43945f6f126).

Планируем отработать ПО для извлечения сведений из опросников в [СТМЗ](https://github.com/p1m-ortho/xs-stmz-methodology) (ранее пробно использовали [SF36+](https://www.apkmonk.com/app/br.com.anestech.sf36/) для Android от Gustavo Carriço, более не доступно на Google Play).

В настоящий момент все опросники оцифрованы в виде изображений.

07.02.2019 САС оцифровала 3-ю часть опросников (с ноября 2018 по февраль 2019), а также повторила оцифровку 1-й части опросников.

20.11.2018 САС оцифровала 2-ю часть опросников (с сентября по ноябрь 2018).

08.11.2018 ПВЖ оцифровал 1-ю часть опросников (с января по сентябрь 2018).

26.09.2018 ПВЖ пробно оцифровал несколько опросников.

Далее даты см. по [blame](https://github.com/p1m-ortho/xc-led-dzhanelidze-proms-and-croms/blame/master/METHOD.md).

САС собирается продолжить оцифровку опросников.

## Перенесение из оцифрованных опросников в формы

### Общая информация

Добавили соответствующую форму как режим просмотра для формы `Новая оценка` в СТМЗ-FormTools (32ec7d58973a89bf54a29b929b1a29da65e4e5ff).

Форма представлена пятью вкладками, две первые из которых представляют стандартные вкладки `Новой оценки`, а оставшиеся три являются частным случаем вкладки `Зависимая переменная` стандартного режима просмотра формы (подробнее про устройство этой стандартной формы и стандартных вкладок см. в будущем в xs-stmz-methodology).

Копипасту этих пяти вкладок привожу ниже.

Данные об измерении

```
ОБЪЕКТ ИЗМЕРЕНИЯ

ID	
Запись *	
Добавить новую запись

Date	
Last modified	
IP Address	
ВЫБРАТЬ ШКАЛУ ВРЕМЕНИ ИЗМЕРЕНИЯ

Время измерения: шкала	
Другая шкала времени измерения	
ОЦЕНИТЬ ВРЕМЯ ИЗМЕРЕНИЯ ТОЧКОЙ

Время измерения: вид точечной оценки	
Время измерения: значение точечной оценки	
ОЦЕНИТЬ ВРЕМЯ ИЗМЕРЕНИЯ ИНТЕРВАЛОМ

Время измерения: вид интервальной оценки	
Время измерения: нижняя граница интервала
```

Независимая переменная

```
ВЫБРАТЬ ШКАЛУ НЕЗАВИСИМОЙ ПЕРЕМЕННОЙ

Независимая переменная: шкала	
Другая шкала независимой переменной	
ОЦЕНИТЬ НЕЗАВИСИМУЮ ПЕРЕМЕННУЮ ТОЧКОЙ

Независимая переменная: вид точечной оценки	
Независимая переменная: значение точечной оценки	
ОЦЕНИТЬ НЕЗАВИСИМУЮ ПЕРЕМЕННУЮ ИНТЕРВАЛОМ

Независимая переменная: вид интервальной оценки	
Независимая переменная: нижняя граница интервала	
Независимая переменная: верхняя граница интервала	
```

UPAT

```
ВНЕСТИ ТРИ ЗНАЧЕНИЯ ПО ШКАЛЕ UPAT

Боль от 0 до 10, баллы (UPAT)	 0   1   2   3   4   5   6   7   8   9   10   Отмечено менее или более 1 значения
Боль от 0 до 5, рожицы (UPAT)	 Рожица 0–1   Рожица 1–3   Рожица 3–5   Рожица 5–7   Рожица 7–9   Рожица 9–10   Отмечено менее или более 1 рожицы
Боль от 0 до 5, переносимость (UPAT)	 Боль отсутствует   Боль можно игнорировать   Мешает деятельности   Мешает концентрироваться   Мешает основным потребностям   Необходим постельный режим  Отмечено менее или более 1 фразы
```

Лицевая сторона SF-36

```
ВНЕСТИ ОТВЕТЫ С ЛИЦЕВОЙ СТОРОНЫ SF-36

Вопрос 1 (SF-36)	 Отличное 
 Очень хорошее 
 Хорошее 
 Посредственное 
 Плохое 
 Отмечено менее или более 1 варианта 
Вопрос 2 (SF-36)	 Значительно лучше, чем год назад 
 Несколько лучше, чем год назад 
 Примерно так же, как год назад 
 Несколько хуже, чем год назад 
 Гораздо хуже, чем год назад 
 Отмечено менее или более 1 варианта 
Вопрос 3-А (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-Б (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-В (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-Г (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-Д (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-Е (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-Ж (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-З (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-И (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 3-К (SF-36)	 Да, значительно ограничивает   Да, немного ограничивает   Нет, совсем не ограничивает  Отмечено менее или более 1 варианта
Вопрос 4-А (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 4-Б (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 4-В (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 4-Г (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 5-А (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 5-Б (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 5-В (SF-36)	 Да   Нет   Отмечено менее или более 1 варианта
Вопрос 6 (SF-36)	 Совсем не мешало 
 Немного 
 Умеренно 
 Сильно 
 Очень сильно 
 Отмечено менее или более 1 варианта
```

Оборотная сторона SF-36

```
ВНЕСТИ ОТВЕТЫ С ОБОРОТНОЙ СТОРОНЫ SF-36

Вопрос 7 (SF-36)	 Совсем не испытывал(а) 
 Очень слабую 
 Слабую 
 Умеренную 
 Сильную 
 Очень сильную 
 Отмечено менее или более 1 варианта 
Вопрос 8 (SF-36)	 Совсем не мешала 
 Немного 
 Умеренно 
 Сильно 
 Очень сильно 
 Отмечено менее или более 1 варианта 
Вопрос 9-А (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-Б (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-В (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-Г (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-Д (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-Е (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-Ж (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-З (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 9-И (SF-36)	 Все время   Большую часть времени   Часто   Иногда   Редко   Ни разу  Отмечено менее или более 1 варианта
Вопрос 10 (SF-36)	 Все время 
 Большую часть времени 
 Иногда 
 Редко 
 Ни разу 
 Отмечено менее или более 1 варианта 
Вопрос 11-А (SF-36)	 Определенно верно   В основном верно   Не знаю   В основном не верно  Определенно неверно   Отмечено менее или более 1 варианта
Вопрос 11-Б (SF-36)	 Определенно верно   В основном верно   Не знаю   В основном не верно  Определенно неверно   Отмечено менее или более 1 варианта
Вопрос 11-В (SF-36)	 Определенно верно   В основном верно   Не знаю   В основном не верно  Определенно неверно   Отмечено менее или более 1 варианта
Вопрос 11-Г (SF-36)	 Определенно верно   В основном верно   Не знаю   В основном не верно  Определенно неверно   Отмечено менее или более 1 варианта
```

На вкладках `UPAT`, `Лицевая сторона SF-36` и `Оборотная сторона SF-36` все элементы управления — переключатели. В таблицу при выборе заносятся соответствующие числовые значения (указаны на бумажных бланках, их вид см. ниже). При выборе варианта `Отмечено менее или более 1…` в таблицы БД вносится значение `NA`.

Оригинальные бумажные бланки опросников используем нижеследующего вида. Вид формы написан строго на их основе. Позднее загрузим копии сюда для сохранности.

SF-36

[SF-36 по IQOLA-МЦИКЖ, 1998](http://therapy.irkutsk.ru/doc/sf36.pdf)

UPAT

![UPAT](http://cloverlucky.ru/upload/iblock/269822-golova-bolit-na-makushke-i-oblast-shei.jpg)

В последующем рассматриваем создание формы и для бланка ASIA.

### Ход работ

Изменил отображение в FormTools только записей по апрельской работе 2019, поскольку САС планирует довбивать опросники:

```
UPDATE `ft_form_1`
SET `is_finalized` = NULL
WHERE `upat_sf36_trng` IS NULL;

UPDATE `ft_form_1`
SET `is_finalized` = "yes"
WHERE `upat_sf36_trng` IS NOT NULL
```

Обновлены 25 записей и 41 запись соответственно, итого отображаются 113 записей.

Все верно. (Про 113 записей и что было до этого см. в [методах соответствующей апрельской ветки](https://github.com/p1m-ortho/xc-led-dzhanelidze-proms-and-croms/blob/apr-semenova/METHOD.md)).

## Шкалы и опросники для нетравматической спинальной патологии

Все три применяемые в настоящее время шкалы (SF-36, UPAT и AIS) носят достаточно общий характер, поэтому выдача их всем спинальным пациентам достаточно оправданна, хотя это решение и было принято только для ПСМТ, однако ввиду наличия по другим видам спинальной патологии специальных, в том числе валидизированных, опросников остается открытым вопрос о том, насколько _достаточно_ этих трех опросников для адекватной по сегодняшним данным оценки результатов для других спинальных пациентов.

## Краткая история вопроса

С января 2018 года начали рутинный сбор опросников у спинальных пациентов, наблюдаемых стационарно и консультируемых стационарно и амбулаторно вертебрологами отдела травматологии НИИ СП. Работа начиналась как сбор опросников у пострадавших с ПСМТ, но вскоре распространили задачу на всех спинальных пациентов (свидетельства этому известны с 15.01.2018).

До начала работы по сбору опросников с целью определить, какие опросники оптимально выдавать пациентам с ПСМТ, ПВЖ выполнил поиск (ориентировочно в конце ноября 2017, восстановить его детали в настоящее время не смог), в результате чего обнаружил работу [[@cutler2016]](https://pubmed.gov/27853666), в соответствии с которой решили использовать SF-36 и ВАШ (которую за неимением ВАШ-линейки заменили на UPAT) для неосложненной ПСМТ, плюс AIS для осложненной.

Зная о разработке опросников PROST и CROST в AOSpine, также выполнили 12.12.2017 21:18 поиск в PubMed:

```
(aospine[tiab] (prost[tiab] or crost[tiab]))
```

Поиск тогда вернул 3 записи (`pubmed_result.xml` прилагается), с которыми ознакомились (к слову сказать, в настоящий момент он по-прежнему возвращает все те же три записи).

На основании этой литературы окончательно убедились, что специальных шкал для ПСМТ еще нет и что будем использовать SF-36, UPAT и AIS.

Также в тот момент знакомились, не поднимая статьи, с имевшимся на тот момент на сайте AOSpine [список публикаций по AOSpine KF Trauma Outcome Measurement project (December 2017)](https://aospine.aofoundation.org/Structure/research/KnowledgeForum/kf-trauma/Documents/201711_Outcomes_TraumaOutcome.pdf). В настоящий момент ссылка не работает, в связи с чем дублируем также этот список здесь:

**Peer-reviewed Journal Articles**

1. Oner FC, Jacobs WC, Lehr AM, Sadiqi S, Post MW, Aarabi B, Chapman JR, Dvorak MF, Fehlings MG, Kandziora F, Rajasekaran S, Vaccaro AR. Toward the Development of a Universal Outcome Instrument for Spine Trauma: A Systematic Review and Content Comparison of Outcome Measures Used in Spine Trauma Research Using the ICF as Reference. Spine (Phila Pa 1976) 41(4): 358-367, 2016.
2. Sadiqi S, Lehr AM, Post MW, Jacobs WC, Aarabi B, Chapman JR, Dunn RN, Dvorak MF, Fehlings MG, Rajasekaran S, Vialle LR, Vaccaro AR, Oner FC. The selection of core International Classification of Functioning, Disability, and Health (ICF) categories for patient-reported outcome measurement in spine trauma patients-results of an international consensus process. Spine J 16(8): 962-970, 2016.
3. Sadiqi S, Verlaan JJ, Lehr AM, Chapman JR, Dvorak MF, Kandziora F, Rajasekaran S, Schnake KJ, Vaccaro AR, Oner FC. Measurement of kyphosis and vertebral body height loss in traumatic spine fractures: an international study. Eur Spine J, 2016.
4. Sadiqi S, Verlaan JJ, Lehr AM, Dvorak MF, Kandziora F, Rajasekaran S, Schnake KJ, Vaccaro AR, Oner FC. Surgeon Reported Outcome Measure for Spine Trauma: An International Expert Survey Identifying Parameters Relevant for the Outcome of Subaxial Cervical Spine Injuries. Spine (Phila Pa 1976) 41(24): E1453-E1459, 2016.
5. Sadiqi S, Verlaan JJ, Mechteld Lehr A, Dvorak MF, Kandziora F, Rajasekaran S, Schnake KJ, Vaccaro AR, Oner FC. Universal disease-specific outcome instruments for spine trauma: a global perspective on relevant parameters to evaluate clinical and functional outcomes of thoracic and lumbar spine trauma patients. Eur Spine J, 2016.
6. Oner FC, Sadiqi S, Lehr AM, Aarabi B, Dunn RN, Dvorak MF, Fehlings MG, Kandziora F, Post MW, Rajasekaran S, Vialle L, Vaccaro AR. Toward developing a specific outcome instrument for spine trauma: an empirical cross-sectional multicenter ICF-based study by AOSpine Knowledge Forum Trauma. Spine (Phila Pa 1976) 40(17): 1371-1379, 2015.
7. Oner FC, Sadiqi S, Lehr AM, Dvorak MF, Aarabi B, Chapman JR, Fehlings MG, Kandziora F, Rajasekaran S, Vaccaro AR. Towards the development of an outcome instrument for spinal trauma: an international survey of spinal surgeons. Spine (Phila Pa 1976) 40(2): E91-96, 2015.
8. Sadiqi S, Lehr AM, Post MW, Vaccaro AR, Dvorak MF, Oner FC. Toward a specific outcome instrument for spinal trauma: how to measure function and health. Spine (Phila Pa 1976) 40(10): E578-586, 2015.
9. Sadiqi S, Mechteld Lehr A, Jacobs WC, Post MW, Cumhur Oner F. Reply to the Letter to the Editor regarding "Towards the Development of a Universal Outcome Instrument for Spine Trauma - A Systematic Review and Content Comparison of Outcome Measures used in Spine Trauma Research Using the ICF as Reference." Spine (Phila Pa 1976). 2015 Oct 17. [Epub ahead of print]. Spine (Phila Pa 1976), 2015.

**Conference Proceedings**

_Podium Presentations_

1. Sadiqi S, Lehr M, Post M, Chapman J, Dvorak M, Kandziora F, Rajasekaran S, Schnake K, Vaccaro A, Oner C. International validation of the AOSpine Patient Reported Outcome Spine Trauma (AOSpine PROST). Global Spine Congress 2017, Milan, Italy, May 2-5, 2017.
2. Sadiqi S, Verlaan JJ, Lehr M, Post M, Muijs S, Chapman J, Dvorak M, Kandziora F, Rajasekaran S, Schnake K, Vaccaro A, Oner C. A new concept of outcome measurement in spine trauma—The AOSpine Clinician Reported Outcome Spine Trauma (AOSpine CROST). Global Spine Congress 2017, Milan, Italy, May 2-5, 2017.
3. Sadiqi S, Verlaan J, Lehr A, Post M, Chapman J, Dvorak M, Kandziora F, Rajasekaran S, Schnake K, Vaccaro A, Oner F. De ontwikkeling van internationale ziekte-specifieke uitkomstinstrumenten voor patiënten met traumatische wervelkolomletsels: AOSpine Patient Reported Outcome Spine Trauma (PROST) en AOSpine Clinician Reported Outcome Spine Trauma (CROST). Dutch Orthopaedic Society (NOV), Den Bosch, The Netherlands, February 1-3, 2017.
4. Sadiqi S, Lehr A, Post M, Oner F, Aospine Knowledge Forum Trauma. AOSpine Patient Reported Outcome Spine Trauma (AOSpine PROST) – a universal disease-specific outcome instrument for traumatic spinal column injury. EuroSpine 2016, Berlin, Germany, October 5-7, 2016.
5. Sadiqi S, Verlaan JJ, Lehr AM, Oner FC, Aospine Knowledge Forum Trauma. A new concept of a universal disease-specific outcome instrument for spine trauma – the AOSpine Clinician Reported Outcome Spine Trauma (AOSpine CROST). EuroSpine 2016, Berlin, Germany, October 5-7, 2016.
6. Sadiqi S, Verlaan J-J, Lehr AM, Oner FC, Aospine Knowledge Forum Trauma. Development of a universal disease-specific outcome instrument for spine trauma – the Aospine Clinician Reported Outcome Spine Trauma (AOSpine CROST). EFORT Congress, Geneva, Switzerland, June 1-3, 2016.
7. Sadiqi S, Lehr AM, Post MW, Oner FC. Development of a universal disease-specific outcome instrument for spine trauma patients – the AOSpine Patient Reported Outcome Spine Trauma (AOSpine PRSOT). Global Spine Congress 2016

    Dubai, United Arab Emirates, 13-16 April, 2016.
8. Sadiqi S, Verlaan JJ, Lehr AM, Oner FC. Development of a universal disease-specific outcome instrument for spine trauma patients – the AOSpine Clinician Reported Outcome Spine Trauma (AOSpine CRSOT). Global Spine Congress 2016, Dubai, UAE, 13-16 April, 2016.
9. Sadiqi S, Lehr AM, Oner FC. Towards the development of an international disease specific outcome instrument for spine trauma – surgeon reported outcome. Eurospine 2015, Copenhagen, Denmark, September 2-4 2015.
10. Sadiqi S, Lehr AM, Oner FC. Towards the development of an international disease specific outcome instrument for spine trauma. Global Spine Congress 2015, Buenos Aires, Argentina, May 20-23, 2015.
11. Oner FC, Jacobs WC, Lehr AM, Sadiqi S. Towards the development of a universal outcome instrument for spine trauma – a systematic review and content comparison of outcome measures used in spine trauma research. 11th International Turkish Spine Congress, Izmir, Turkey, April 29-May 3, 2015.
12. Sadiqi S, Lehr AM, Oner FC. Towards the development of an international disease specific outcome instrument for spine trauma – results of an international consensus meeting. 11th International Turkish Spine Congress, Izmir, Turkey, April 29-May 3, 2015.
13. Sadiqi S, Lehr AM, Oner FC. Towards developing a specific outcome instrument for spine trauma - An empirical cross-sectional multicenter ICF-based study by the AOSpine Knowledge Forum Trauma. 11th International Turkish Spine Congress, Izmir, Turkey, April 29-May 3, 2015.
14. Sadiqi S, Lehr AM, Oner FC. Towards the development of an outcome instrument for spine trauma – An international survey of spinal surgeons. 11th International Turkish Spine Congress, Izmir, Turkey, April 29-May 3, 2015.

_Poster Presentations_

1. Sadiqi S, Lehr AM, Post MW, Oner FC, Aospine Knowledge Forum Trauma. Universal disease-specific outcome instrument for traumatic spinal column injury – the Aospine Patient Reported Outcome Spine Trauma (AOSpine PROST). EFORT Congress, Geneva, Switzerland, June 1-3, 2016.

-----

Так с тех пор и выдаем всем спинальным пациентам в бумажной форме эти опросники. По факту выдаем пока не всем, а кому получается, но стремимся к тому, чтобы опросники стали рутинной документацией для наших спинальных пациентов.
