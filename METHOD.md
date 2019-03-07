# METHOD.md

## Частота осложнений хирургического лечения деформаций позвоночника как основной причины обращения против группы консервативного лечения: протокол исследования рутинных клинических данных центра неотложной взрослой хирургии позвоночника

### Актуальность

В систематическом обзоре D. Cheuk с соавторами (2015) на тему клинической эффективности и безопасности хирургического лечения при сколиозе вследствие мышечной дистрофии Дюшенна авторы не смогли выявить ни одного рандомизированного испытания на эту тему, из чего следует, что для ответа на этот вопрос отсутствуют надежные научные данные.

Поскольку поиск и изучение источников по этой теме входят в объем отдельного обзора литературы, над которым мы сейчас работаем в рамках отдельного исследования, здесь этих вопросов касаться не будем.

В настоящей работе мы планируем получить собственные данные о сравнительной частоте осложнений хирургического лечения деформаций позвоночника с перспективой последующего включения этих данных в обзор литературы на этапе синтеза.

### Релеватные специальные руководства по проведению и написанию исследования такого дизайна

> ПВЖ: полужирным здесь выделяю ссылки, здесь добавленные впервые (ранее не фигурировали в истории коммитов).

The REporting of studies Conducted using
Observational Routinely-collected health
Data (RECORD) Statement
 ([[@Benchimol2015]](https://pubmed.gov/26440803)).

Strengthening the Reporting of Observational Studies in Epidemiology (STROBE): Explanation and Elaboration ([[@Vandenbroucke2007]](https://doi.org/10.1097/EDE.0b013e3181577511)).

[STROBE checklist for conference abstracts](http://www.strobe-statement.org/fileadmin/Strobe/uploads/checklists/STROBE_checklist_conference_abstract_DRAFT.pdf).

Reporting to Improve Reproducibility and Facilitate Validity Assessment for Healthcare Database Studies V1.0 ([[@Wang2017]](http://dx.doi.org/10.1016/j.jval.2017.08.3018)).

Transparent Reporting of Data Quality in Distributed Data Networks ([[@Kahn2015]](http://dx.doi.org/10.13063/2327-9214.1052)).

**Spinal Adverse Events Severity System, version 2 (SAVES-V2): inter- and intraobserver reliability assessment ([[@Rampersaud2016]](https://pubmed.gov/27058499)).**

> ПВЖ: откуда взял: из [[@Rosenthal2015]](https://pubmed.gov/25665678) (см. 1d7e3eecb4e0fb630596ac4bd91b4b79002a0579) поднял в PubMed [[@Clavien2009]](https://pubmed.gov/19638912), откуда из Similar articles перешел из интереса к [[@Sink2012]](https://pubmed.gov/22528378), откуда таким же образом перешел к [[@Rampersaud2010]](https://pubmed.gov/20195203), а оттуда уже таким же образом вышел на [[@Rampersaud2016]](https://pubmed.gov/27058499).

### Популяция

В соответствии с RECORD ([[@Benchimol2015]](https://pubmed.gov/26440803)), приводим в отдельности три уровня популяции:

1. Целевая популяция

    * Лица, для которых рассматривается вопрос хирургического лечения по поводу патологических деформаций позвоночника.
    * Вне зависимости от патологии, с которой связана деформация.
    * Исключая случаи, когда наличие деформации позвоночника не является главной причиной обращения за медицинской помощью.
    * Вне зависимости от объема выполненного хирургического или консервативного лечения.
    
2. Популяция базы данных

    * Медицинская информационная система НИИ скорой помощи им. И. И. Джанелидзе, где фиксируются все поступающие в институт пациенты, все выполняемые в институте операции и лучевые исследования и большая часть сведений из историй болезни (часть сведений при этом остается доступной только из бумажной истории), работает на полную силу ориентировочно с 2015 года.
    * Выбор только одного учреждения, причем именно этого, обусловлен производственными возможностями. При этом немаловажно отметить, что санкт-петербургский НИИ скорой помощи им. И. И. Джанелидзе является взрослым травмоцентром 1-го уровня, на уровне города специализирующемся в частности на лечении пострадавших с политравмой и пациентов с сепсисом, и на базе отделений института с 2010 функционирует городской центр неотложной хирургии позвоночника, в который распоряжением управления городским здравоохранением городскому бюро скорой помощи предписано направлять всех пациентов с острой спинальной патологией и пациентов со позвоночно-спинномозговой травмой со всей южной части города (подробнее см. в Дулаев А. К. и соавт., 2011, 2017, 2018). Другая часть пациентов с патологией позвоночника госпитализируется в институт планово.
    * Непосредственно к базе данных, обслуживающей МИС института, мы как исследователи не имеем доступа, поэтому IT-служба института по нашему техническому заданию сформировала запрос, в детали которого здесь углубляться не будем, так как это длинный разговор, см. для этого xs-led-dzhanelidze-global-spine-query. К пользованию этим запросом мы имеем свободный доступ и можем запускать его произвольное число раз.
    * Суть запроса в том, что он выбирает из всех случаев в базе случаи по двум критериям.
    * «Спинальная операция»: случаи, по которым выполнена операция с одним из внутренних кодов, которые мы расцениваем как спинальные (подробнее — в xs-led-dzhanelidze-global-spine-query).
    * «Спинальная КТ/МРТ»: случаи, не подошедшые по критерию «Спинальная операция», но по которым зарегистрировано хотя бы одно КТ- или МРТ-исследование, причем такое, в протоколе которого фигурирует текстовая маска «позвон». 
    * На выходе получаем таблицу Excel, где строками являются отдельные совпадения по критериям (то есть может быть более одной записи по одной госпитализации, если за данную госпитализацию выполнено несколько «спинальных операций» или «спинальных КТ/МРТ»), а поля — следующие: добавить список полей.
    
3. Популяция исследования

    * Из результатов этого запроса мы выбираем только записи с датой поступления от 01.01.2018 и с датой выписки по 31.01.2019. Такой выбор обусловлен стремлением увязать все ныне текущие работы по РКД санкт-петербургского городского центра неотложной хирургии позвоночника (см. ветки xa-led-p1m-apr-conference) на одну субпопуляцию пациентов, а поскольку одна из работ — не по базе, а по опросникам,  данные по которым имеются в настоящее время только за данный период (для подробностей см. xc-led-dzhanelidze-proms-and-croms), то и ограничились и здесь им же.
    * Итоговую таблицу экспортируем в формат CSV, и дальнейшее сужение по ней см. в [разделе о методах получения данных из базы](#методы-получения-данных-из-базы).

### Методы получения данных из базы

Документируем общее количество записей в итоговой CSV-таблице (см. [раздел о популяции](#популяция)), а также количества записей в категориях «Спинальная операция» и «Спинальная КТ/МРТ».

Устраним в таблице все записи, являющиеся 100%-ными дубликатами, документируем итоговое число.

Затем, открыв таблицу как текстовый файл, среди записей типа «Спинальная операция» выполним поиск по регулярному выражению, основанному на следующих масках:

* `деформац`;
* `кифо`;
* `лордо`;
* `сколио`.

Итоговое регулярное выражение:

`/([Дд][Ее][Фф][Оо][Рр][Мм][Аа][Цц]|[Кк][Ии][Фф][Оо]|[Лл][Оо][Рр][Дд][Оо]|[Сс][Кк][Оо][Лл][Ии][Оо])/gi`

Документируем количество вхождений.

Затем вручную пройдем по каждому из вхождений, определяя их релевантность:

* Если данное вхождение относится к слову, обозначающему деформацию позвоночника в данном контексте (наше представление о деформации см. в [разделе о популяции](#популяция)), то оно релевантно.
* Иначе вхождение нерелевантно.

При этом будем подсчитывать число релевантных и нерелевантных вхождений, и итоговые числа документируем.

При выявлении релевантного вхождения соответствующую запись будем копировать в отдельный CSV-файл.

По окончании ручной проверки вхождений возьмем этот новый файл и документируем количество записей в нем.

После этого просмотрим вручную все записи и выполним подсчет отдельных операций коррекции деформации, которые фигурируют по данным записям.

Для этого создадим в таблице отдельное поле для номера операции, куда для каждой записи будем проставлять последовательно числа, начиная с 1 и увеличивая с каждой записью на единицу, при этом если несколько записей относятся к одной и той же операции, то будем проставлять для таких записей одно и то же число, в том числе в случае комбинированных (в том числе двухэтапных) вмешательств.

Данные группы записей, объединенных общим номером операции, и составят основную группу исследования. Их число документируем.

Контрольную группу сформируем путем случайной выборки такого же числа _записей_ (именно записей, а не групп записей), как и в основной группе, из категории «Спинальные КТ/МРТ» изначальной CSV-таблицы.

Для этого сгенерируем в [разделе генерации множеств целых чисел без повторений на сайте RANDOM.ORG](https://www.random.org/integer-sets) одно неотсортированное множество, содержащее неповторяющиеся случайные числа, значение каждого из которых может быть от 1 до числа записей «Спинальные КТ/МРТ» в изначальной CSV-таблице, в количестве, равном числу таких записей.

Затем в изначальную CSV-таблицу добавим новое поле, куда вставим все эти значения (таким образом в каждой записи появится уникальное случайное число).

После этого отсортируем таблицу по возрастанию.

После этого начнем просматривать вручную все записи, выполняя подсчет отдельных случаев госпитализации, которые фигурируют по данным записям, до тех пор, пока число групп записей не станет равным числу групп записей в основной группе.

Для этого создадим в таблице отдельное поле для номера госпитализации, куда для каждой записи будем проставлять последовательно числа, начиная с 1 и увеличивая с каждой записью на единицу, при этом если несколько записей относятся к одной и той же госпитализации, то будем проставлять для таких записей одно и то же число.

Данные группы записей, объединенных общим номером госпитализации, и составят основную группу исследования. Их число документируем и скопируем их в отдельный файл.

**Мы осознаем, что группа «Спинальная КТ/МРТ» кроме искомых нами пациентов с деформациями как первичной причиной обращения, для которых могло рассматриваться выполнение хирургического лечения, однако было принято решение о консервативном лечении, может также включать пациентов следующих категорий:**

* пациентов без спинальной патологии;
* пациентов со спинальной патологией, иной чем деформация как основная причина обращения;
* таких пациентов с деформациями позвоночника, для которых выполнение хирургического лечения вряд ли могло рассматриваться;
* оперированных пациентов, код операции которых не входит в список спинальных.

Однако адекватное выделение всех этих подгрупп представляется сложной задачей, и может быть выполнено в последующих исследованиях.

Таким образом будут сформированы основная и контрольная группы.

Объединим записи из файлов с основной и контрольной группами в один файл, отметив в отдельном поле для каждой записи принадлежность к основной или контрольной группам.

Затем приступим к выявлению осложнений.

Процесс идентификации и классификации осложнений проведем по [[@Rampersaud2016]](https://pubmed.gov/27058499), начиная с шага 2, т. к. в шаге 1 у них описан их материал (10 случаев ПСМТ и 12 случаев ДДЗП с изображениями и возможностью задать вопрос по случаю), который у нас отличается (ряд случаев деформаций позвоночника как основной причины обращения, без изображений, сведения ограничены выборкой из базы), и заканчивая шагом 3, так как нас интересует только частота осложнений, причем без детализации по их конкретному виду.

Таким образом, для каждой группы записей проведем установление факта наличия одного или более осложнений (интра- либо послеоперационных ) в соответствии с классификацией [[@Rampersaud2016]](https://pubmed.gov/27058499), для чего будем вписывать «Да» или «Нет» в отдельное поле. Вписывая «Да» в случае, когда единственным подходящим видом осложнения в классификации выступает «Другое», будем в отдельное поле вписывать название соответствующего осложнения.

Согласие по факту наличия осложнений в оригинальной статье было отличным: 97—99 % межэкспертное и 97—100 % внутриэкспертное,— в связи с чем процедуру оценки наличия осложнений будет проводить однократно один исследователь (ПВЖ).

### Методы трансформации и анализа данных

Подсчитаем и документируем общее количество групп с осложнениями и без них в основной и контрольной группах (4 числа).

Рассчитаем относительный риск (RR) и его 95%-ный ДИ, пользуясь [калькулятором RR от CCRB CUHK](https://www2.ccrb.cuhk.edu.hk/stat/confidence%20interval/CI%20for%20relative%20risk.htm).

Рассчитаем, пользуясь [калькулятором хи-квадрат от Jeremy Stangroom](https://www.socscistatistics.com/tests/chisquare2/default2.aspx), значение статистики хи-квадрат в тесте на независимость (1 степень свободы) и p-значение (2 числа).

### Результаты

Предстатавим только в текстовой форме в полном соответствии [разделу о методах трансформации и анализа данных](#методы-трансформации-и-анализа-данных).

Первичные данные сейчас публиковать не планируем, поскольку их анонимизация и подготовка к публикации займут дополнительное время, однако они будут доступны по запросу.

### Обсуждение

Интерпретируем полученный 95%-ный ДИ отношения шансов и p-значение.

Обсудим вопросы риска систематической ошибки, опираясь на схему ROBINS-I ([[@Sterne2016]](https://doi.org/10.1136/bmj.i4919)).

> ПВЖ: про ROBINS-I см. ниже здесь в METHOD.md.

### Выводы

Интерпретируем полученные 95%-ные ДИ отношений шансов и p-значения.

### Практические рекомендации

Не предусмотрено.

### Направления дальнейших исследований

См. [раздел об актуальности](#актуальность).

### Благодарности

Здесь представим благодарности.

## Финальный план

На основе [общего финального плана](https://github.com/p1m-ortho/xa-led-p1m-apr-conference/blob/6e81446762c59f950bf189aa90db1e65d6d9cfdd/METHOD.md).

> [00:43, 7.3.2019] Павел: Завтра работайте в своем режиме: как Вы наметили. Вы писали, что собираетесь доразобрать кокрейновский обзор — доразберите. Собирались скринить — скриньте, благо в Рэйане все к этому готово. Я же тем временем буду работать над методами. И когда я закончу над ними работать, я свяжусь с Вами, и тогда Вы отложите всё и приступите к написанию текста тезисов на основании того, что я написал, и сможете заниматься этим до утра пятницы. К утру пятницы я проведу работу с базой и анализ, и нам останется только вписать цифры в готовые тезисы. Затем я компилирую документ Word, и все готово к отправке ДИК.
>
> [00:44, 7.3.2019] Павел: Поскольку я не знаю, во сколько закончу писать методы, то и сроков никаких нет. Работайте в своем ритме. Но как только я напишу методы, и мы с Вами это обсудим, Вы приступите к написанию тезисов, и у Вас будет на это время до утра пятницы.

Ну и по поводу продолжения банкета (из серии: «Жизнь после тезисов»):

> [00:12, 7.3.2019] Павел: Дальше зависит от того, хотите ли Вы продолжить начатую работу. Если да, то вначале нужно довести до ума обзор литературы. Первым делом нужно будет мне отрецензировать формально по PRESS Ваши поиски. Потом нужно будет выполнять еще дополнительные поиски (расширять эти плюс добавлять другие места поиска — про это я уже писал Вам в METHOD.md). Дальше скрининг там, ну и так далее.
>
> [00:13, 7.3.2019] Павел: В зависимости о того, что у нас получится в тезисах, будет понятно, как и куда тезисы применить, и какая их перспектива.

## PICO-формула

P (популяция,население) - пациенты, ~~которым было выполнено оперативное лечение по поводу сколиза~~ с деформациями позвоночника как основной причиной обращения.

ПВЖ:

> Формулировку популяции я сменил, поскольку из включения только оперированных пациентов с необходимостью следует, что группа сравнения, определенная как консервативное лечение, будет пустым множеством.
>
> Предлагаю именно такую формулировку, не увязанную вообще на хирургическое лечение, чтобы избежать проблемы формулирования показаний к операции.
>
> Слово «сколиоз» предлагаю заменить «деформациями», поскольку считаю, что термин сколиоза не дает необходимую здесь широту (склоняет думать про первичные сколиозы, забывая про вторичные деформации на фоне другой спинальной патологии).
>
> При этом предлагаю именно с уточнением «как основной причиной обращения», чтобы обойти популяцию случаев со вторичными деформациями, когда сам факт деформации не имеет существенной значимости при определении тактики (большая доля случаев патологических и травматических переломов). Хотя это дополнение наверняка создаст проблемы при работе как с литературой, так и с базой, потому что причина обращения там очень даже может явно быть не указана — и все же предполагаемое отсутствие данных не есть достаточное основание отказаться от этого дополнения, если оно действительно обоснованно, поскольку полученные свидетельства отсутствию данных — тоже важные свидетельства ([[@Altman1995]](https://pubmed.gov/7647644)).

I (вмешательство) - наиболее широки охват, любое оперативное вмешательство

C (контроль, сравнение) - стандартное консервативное лечение

О (результат) - наличие осложнений

Вопрос: оперативное лечение по сравнению со станартным консервативным является ли более вредным в прогнозе

## Критерии исключения

1. **wrong publication type**,
1. **background article**,
1. **wrong population**,
1. **wrong drug**,
1. **wrong study design**,
1. **wrong outcome**,
1. ~~**wrong study duration**~~,
1. **foreign language**.

## Спланировать поиск источников

### Общий план ~~поисковых~~ поисково-спасательных 😊 работ

```
06.03.19, 00:14 - Nachrichten in diesem Chat sowie Anrufe sind jetzt mit Ende-zu-Ende-Verschlüsselung geschützt. Tippe für mehr Infos.
06.03.19, 00:14 - Павел: The
search plan should include searching a range of biblio-
graphic databases as well as additional sources, for
example, study registers, gray literature sources, citation
databases, and related article searching; as well as contact-
ing experts and/or manufacturers
06.03.19, 00:14 - Павел: McGowan 2016 со ссылкой на кокрейновское руководство 5.1.
06.03.19, 00:15 - Павел: Просто хорошая фраза, использую ее.
06.03.19, 00:15 - Павел: Места поиска:
06.03.19, 00:17 - Павел: 1. Библиографичекие БД.
2. Регистры исследований.
3. Серая литература.
4. Базы цитирований.
5. Кнопка «Похожие статьи».
6. Контакт с экспертами/производителями.
06.03.19, 00:19 - Павел: *7. Списки литературы включенных статей и обзоров на тему.
06.03.19, 00:20 - Павел: Это я готовлюст рецензировать Вашу пабмедовскую стратегию по PRESS.
06.03.19, 00:22 - Павел: pubmed.gov/27005575
06.03.19, 00:22 - Павел: И соответствующий разъяснительный документ:
06.03.19, 00:23 - Павел: https://www.cadth.ca/sites/default/files/pdf/CP0015_PRESS_Update_Report_2016.pdf
06.03.19, 00:55 - Павел: It should be noted that PRESS focuses on the quality of the Boolean search and is only one 
aspect of a comprehensive search for SRs and HTAs. Other important aspects include the 
search plan, search validation, and search reporting (Figure 1).
06.03.19, 00:57 - Павел: Еще одна хорошая фраза (на этот раз из McGowan 2016, который E&E).
06.03.19, 00:57 - Павел: То есть поиск включает:
06.03.19, 00:58 - Павел: 1. План поиска.
2. Валидация поиска.
3. Подготовка отчета о поиске.
06.03.19, 00:59 - Павел: Где вот это, в свою очередь, относится к плану поиска.
06.03.19, 00:59 - Павел: Other validation approaches include reaching data saturation,7,8 testing 
the search of the main database against eligible studies identified from any source at the 
conclusion of the screening process or prior to updating,9
and testing using a related article and 
simple search protocol.
10
06.03.19, 01:00 - Павел: Это про валидацию поиска: один из подходов — рецензирование, а это еще их ряд.
06.03.19, 01:03 - Павел: 7. Finfgeld-Connett D, Johnson ED. Literature search strategies for conducting knowledge-building 
and theory-generating qualitative systematic reviews. J Adv Nurs. 2013;69(1):194-204. 
http://www.ncbi.nlm.nih.gov/pubmed/22591030.
8. Booth A. How much searching is enough? Comprehensive versus optimal retrieval for technology 
assessments. Int J Technol Assess Health Care. 2010;26(4):431-435.
9. Sampson M, Mcgowan J. Inquisitio validus Index Medicus : A simple method of validating 
MEDLINE systematic review searches. Res Synth Methods. 2011;2(2):103-109. 
http://onlinelibrary.wiley.com/doi/10.1002/jrsm.40.
10. Waffenschmidt S, Janzen T, Hausner E, Kaiser T. Simple search techniques in PubMed are 
potentially suitable for evaluating the completeness of systematic reviews. J Clin Epidemiol. 
2013;66(6):660-665.
11. Lane D, Dykeman J, Ferri M, Goldsmith CH, Stelfox HT. Capture-mark-recapture as a tool for 
estimating the number of articles available for systematic reviews in critical care medicine. J Crit 
Care. January 2013. http://www.ncbi.nlm.nih.gov/pubmed/23312123.
12. Liberati A, Altman DG, Tetzlaff J, et al. The PRISMA statement for reporting systematic reviews 
and meta-analyses of studies that evaluate health care interventions: explanation and elaboration. 
PLoS Med. 2009;6(7):e1000100.
13. Harbour J, Fraser C, Lefebvre C, et al. Reporting methodological search filter performance 
comparisons: A literature review. Health Info Libr J. 2014;31(3):176-194.
14. Booth A. “Brimful of STARLITE”: toward standards for reporting literature searches. J Med Libr 
Assoc. 2006;94(4):421-429, e205. 
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=1629442&tool=pmcentrez&rendertype=
abstract.
15. Fehrmann P, Thomas J. Comprehensive computer searches and reporting in systematic reviews. 
Res Synth Methods. 2011;2(1):15-32.
06.03.19, 01:03 - Павел: Estimating the true number of relevant articles using capture-recapture rates has been 
proposed.
8,11Finally, accurate reporting of all aspects of the search is necessary to facilitate 
critical appraisal and to allow replication and updating of the search.12–15
06.03.19, 01:04 - Павел: Вот теперь рисуется полноценное представление о _поиске_ ~литературы~ исследований как этапе обзора литературы.
```

С учетом вышеизложенного:

* Из БД явно не хватает eLIBRARY.RU.
* Остальные места поиска — совсем не представлены.
* Хорошо бы рассмотреть валидацию представленных стратегий не только путем рецензирования, но и более объективными способами.
* Хорошо бы подготовить шаблон отчета о поиске на основании PRISMA с ее расширениями (помним также про PRISMA-S, которая все еще в разработке), MECIR и специальных гайдов по написанию отчетов о поисках (в частности см. выше, плюс из недавнего рейда в Экватор, 1d7e3eecb4e0fb630596ac4bd91b4b79002a0579).

Нет шансов, что удастся это сделать сейчас ввиду жестких сроков по апрелю, но это не отменяет того, что это _нужно_ сделать.

### Поисковая стратегия в PubMed

```
Текст запроса: (("Spinal Curvatures"[Mesh]) AND "Orthopedic Procedures"[Mesh]) AND "Quality of Life"[Mesh]
```

ПВЖ: план рецензии на стратегию см. в приложениях.

Срок: до 5 дней по PRESS, но с учетом наших сроков по апрельской конференции постараюсь сделать быстрее.

**N. B.: «If major revisions are advised as a result of the peer review, a second PRESS peer review of the revised search strategy is conducted… A second review may be recommended in some cases; for example, the project scope or research question(s) change
OR complex new interfaces are involved OR the peer reviewer specified that there are required revisions» ([[@McGowan2016]](https://pubmed.gov/27005575).**

Результат: 211 статей

ПВЖ:

> Только что успешно реплицировал по приведенному запросу (211 записей, `pubmed_result.xml` прилагаю).
>
> Запрос с уже включенным ограничением по дате: `1600/01/01:2019/03/04[mhda] (("Spinal Curvatures"[Mesh]) AND "Orthopedic Procedures"[Mesh]) AND "Quality of Life"[Mesh]` — возвращает те же 211 записей (почему дата здесь на 2 дня меньше текущей, см. в 0f990384d4548f3fcf80607d65da6bbc8fb1fd6c).
>
> Предлагаю эту правку включить в сам запрос для большей прозрачности для воспроизведения.

### Поисковая стратегия в Cochrane Library

ПВЖ: также планирую рецензировать; после пабмедовской стратегии.

```
Текст запроса: scoliosis
```
Результат: 5 статей, из них 1 по интересующей теме - bettany-saltikov2015

ПВЖ:

> Реплицировал только что поиск с учетом представленного ССС текста запроса (Cochrane Database of Systematic Reviews Issue 3 of 12, March 2019; Cochrane Central Register of Controlled Trials Issue 3 of 12, March 2019); пошаговую стратегию с количествами результатов см. в `20190306_search_manager_search.txt` (дата и время запроса там почему-то GMT+0000, причем ранее все в той же [Cochrane Library через публичный интерфейс Wiley](https://www.cochranelibrary.com/advanced-search/search-manager) было GMT+0800: 3da64d2120e1abea35e11d3c58c2252bd8cea3b1; я еще раз перепроверил: ошибки нет; вероятно, причина в том, что в тот раз я был залогинен, а в этот — нет; надо будет поискать настройки часового пояса у себя в аккаунте).

> Не сходится число результатов по `(scoliosis):ti,ab,kw` с приведенным выше ССС (5 записей):
>
> * CDSR (8 Reviews + 2 Protocols): 10 записей;
> * CENTRAL: 996 записей.
> * Итого в The Cochrane Library: 1006 записей.
>
> При этом по `(scoliosis):ti` число обзоров сходится с приведенным ССС:
>
> * CDSR (5 Reviews + 1 Protocols): 6 записей;
> * CENTRAL: 663 записи.
> * Итого в The Cochrane Library: 669 записей.
>
> При этом при изучении результатов по 5 (в `citation-export.bib` прилагаю) одна из записей — [[@BettanySaltikov2015]](https://pubmed.gov/25908428), что соответствует данным ССС.
>
> Таким образом, стратегию считаю воспроизведенной удачно.
>
> Для обеспечения успешной воспроизводимости необходимо дополнить оригинальный отчет о поиске датой поиска, точным указанием базы и ее выпуска (Cochrane Database of Systematic Reviews Issue 3 of 12, March 2019) с указанием, что поиск только в пределах Reviews, но не Protocols.

## Rayyan: скрининг-1

Адрес обзора: https://rayyan.qcri.org/reviews/54530

ПВЖ:

> 211 из PubMed уже загрузил в Рэйан ССС — я сейчас добавил туда 5 из CDSR.
>
> Итого там сейчас 216 записей, из которых 4 неразрешенных дубликата — разрешил, все 4 не были дубликатами. Так что всего 216 записей, дубликатов нет.
>
> Отскринено 0/216 записей.
>
> Маскирование включено: `Blind ON`.
>
> На днях Рэйан-таки запустили свое обновление, о котором недавно сообщали по почте: появились блоки `Minimum collaborator decisions` (At least 2	0; At least 1	0) и `Maximum collaborator decisions` (At most 0	216; At most 1	216). Также обещали прибавку в производительности.

## Rayyan: скрининг-2

## Картирование

## Приложения

### Рецензия на поиск в PubMed (ПВЖ)

Table 1. PRESS 2015 Guideline Evidence-Based Checklist

(Доп. по: Appendix A 
PRESS Guideline — Search Submission & Peer Review Assessment)

Translation of the research question

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required

>  Does the search strategy match the research question/PICO?


> Are the search concepts clear?


> Are there too many or too few PICO elements included?


> Are the search concepts too narrow or too broad?


> Does the search retrieve too many or too few records? (Please show number of hits per line.)


> Are unconventional or complex strategies explained?


Boolean and proximity operators
 (these vary based on search service)

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required


> Are Boolean or proximity operators used correctly?


> Is the use of nesting with brackets appropriate and effective for the search?


> If NOT is used, is this likely to result in any unintended exclusions?


> Could precision be improved by using proximity operators (eg, adjacent, near, within) or phrase
searching instead of AND?


> Is the width of proximity operators suitable (eg, might adj5 pick up more variants than adj2)?


Subject headings (database specific)

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required

>  Are the subject headings relevant?


> Are any relevant subject headings missing; for example, previous index terms?


> Are any subject headings too broad or too narrow?


> Are subject headings exploded where necessary and vice versa?


> Are major headings (‘‘starring’’ or restrict to focus) used? If so, is there adequate justification?


> Are subheadings missing?


> Are subheadings attached to subject headings? (Floating subheadings may be preferred.)


> Are floating subheadings relevant and used appropriately?


> Are both subject headings and terms in free text (see the following) used for each concept?


Text word searching (free text)  

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required


> Does the search include all spelling variants in free text (eg, UK vs. US spelling)?


> Does the search include all synonyms or antonyms (eg, opposites)?


> Does the search capture relevant truncation (ie, is truncation at the correct place)?


> Is the truncation too broad or too narrow?


> Are acronyms or abbreviations used appropriately? Do they capture irrelevant material? Are the
full terms also included?


> Are the keywords specific enough or too broad? Are too many or too few keywords used? Are stop
words used?


> Have the appropriate fields been searched; for example, is the choice of the text word fields


> (.tw.) or all fields (.af.) appropriate? Are there any other fields to be included or excluded
(database specific)?


> Should any long strings be broken into several shorter search statements?


Spelling, syntax, and line numbers

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required

> Are there any spelling errors?


> Are there any errors in system syntax; for example, the use of a truncation symbol from a
different search interface?


> Are there incorrect line combinations or orphan lines (ie, lines that are not referred to in the final summation that could indicate an error in an AND or OR statement)?


Limits and filters

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required

>  Are all limits and filters used appropriately and are they relevant given the research question?


> Are all limits and filters used appropriately and are they relevant for the database?


> Are any potentially helpful limits or filters missing? Are the limits or filters too broad or too
narrow? Can any limits or filters be added or taken away?



> Are sources cited for the filters used?

Overall evaluation

A -­‐No revisions
B -­‐ Revision(s) suggested
C -­‐ Revision(s) required


Abbreviation: PICO, population/problem, intervention/exposure, comparison, outcome.

From reference [6].  2015 CADTH. Reprinted with permission.

[6] McGowan J, Sampson M, Salzwedel D, Cogo E, Foerster V,
Lefebvre C. PRESSePeer Review of Electronic Search Strategies:
2015 Guideline Explanation & Elaboration (PRESS E&E). Ottawa:
CADTH; 2016:Ottawa.

### Рецензия на поиск в CDSR и CENTRAL
