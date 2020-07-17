# СТМЗ Fives: мнемоника для разработки форм картирования в клинических scoping-обзорах (преимущественно по хирургии) | STMZ Fives: A mnemonic to develop charting forms in clinical (mostly surgical) scoping reviews

## Аннотация | Abstract

### Актуальность | Background

Занимаясь планированием scoping-обзоров, на этапе разработки формы картирования все время наталкивался на препятствие. Этапы поиска и скрининга к данному моменту я для себя разобрал — см. [RESCUER](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/rescuer-master). А вот как разрабатывать формы картирования как с позиций структуры, так и с позиций технической стороны — до сих пор ни одно решение, которые я пробовал, мне не подошли.

> When planning scoping reviews, I always faced an obstacle at the charting form development stage. As to the search and screening stages, I have made them clear for myself by now, see [RESCUER](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/rescuer-master). But none of the solutions I tried to this moment to develop charting forms both structurally and from a technical standpoint proved acceptable to me.

### Методы | Methods

Разработано 4 апреля 2020 в процессе подготовки протокола для [scoping-обзора по национальным клиническим рекомендациям по травме позвоночника](https://osf.io/7vx5n/). Изначально стояла цель разработать core-датасет для картирования по травме позвоночника, но получалось нечто большее, и по мере этого генерализовался.

> This was developed on April 4, 2020 in the process of making a protocol for [the scoping review of national clinical practice guidelines on spinal injuries](https://osf.io/7vx5n/). Initially, the purpose was to develop a core spinal injuries charting dataset, but it became something bigger, so I generalized in accordance with that.

Прежде на протяжении 4 лет (с 2016) неоднократные и безуспешные попытки разработать аналогичную форму — частью опубликованные, частью нет. Очень утомительно было бы исчерпывающе приводить все, но некоторые из них см. по [репозиториям p1m-ortho](https://github.com/p1m-ortho).

> For four years prior (since 2016), there were multiple (unsuccessful) attempts to develop an analogous form, some of which were published, some not. It would be overwhelming to rigorously list all, but see some of them throughout [the repositories at p1m-ortho](https://github.com/p1m-ortho).

Образец формы реализован на платформе [FormTools](https://formtools.org).

> A sample form was built with the [FormTools](https://formtools.org) platform.

СТМЗ — [«средство трансляции медицинских знаний»](https://github.com/p1m-ortho/xs-stmz-methodology). Название `Fives` отсылает к [персонажу «Звездных войн»](https://starwars.fandom.com/ru/wiki/КС-5555).

> STMZ is a Russian acronym for [a ‘medical knowledge translation tool’](https://github.com/p1m-ortho/xs-stmz-methodology). The `Fives` title is [a Star Wars character](https://starwars.fandom.com/wiki/CT-5555) reference.

### Результаты | Results

1. 5 принципов составления форм для картирования данных из клинической (преимущественно хирургической) научной литературы и медицинской документации.
2. 5 групп полей в форме (в скобках — тип данных): [Популяция (свободный текст)](/Screenshots/STMZ_Fives_FormTools_Population_Tab_ru-RU.png), [Вмешательства (свободный текст)](/Screenshots/STMZ_Fives_FormTools_Interventions_Tab_ru-RU.png), [Исходы (свободный текст)](/Screenshots/STMZ_Fives_FormTools_Outcomes_Tab_ru-RU.png), [Методология (свободный текст)](/Screenshots/STMZ_Fives_FormTools_Methodology_Tab_ru-RU.png), [Вспомогательные (разное)](/Screenshots/STMZ_Fives_FormTools_Accessories_Tab_ru-RU.png).
3. По 5 полей в каждой группе: Условия оказания помощи, Анамнез заболевания, Анамнез жизни, Основное заболевание: Местное, Основное заболевание: Общее; Организация помощи, Нехирургические мероприятия, Хирургический доступ, Объем операции, Закрытие раны; Пациент-сообщаемые, Клиницист-сообщаемые, Нежелательные события, Суррогатные, Экономические; Риск случайной ошибки, Риск систематической ошибки: До вмешательств, Риск систематической ошибки: При вмешательствах, Риск систематической ошибки: После вмешательств, Риск фальсификации; ID карты (ID), Дата и время создания карты (дата и время), Дата и время изменения карты (дата и время), Документы (ссылки), Примечание к карте (свободный текст).
4. 5 полей для ссылок на форму с документами.
5. 5 полей в [форме для документов](/Screenshots/STMZ_Fives_FormTools_Document_Form_ru-RU.png): Фамилия или ФИО пациента / 1-го автора (свободный текст), Год рождения / публикации или возраст (лет) (целое число), № и/б / PMID / DOI / другой ID (свободный текст), Уникальный автогенерируемый ярлык типа Имя + Год + ID (ID), Примечание к документу (свободный текст).

> 1. Five principles to chart data from clinical (mostly surgical) research reports and medical records.
> 2. Five field groups in the form (data types in parentheses): Population (Free Text), Interventions (Free Text), Outcomes (Free Text), Methodology (Free Text), Accessories (Miscellaneous).
> 3. Five fields per each group: Health Care Setting, History of the Present Illness, Past / Family / Social History, Primary Diagnosis: Local Features, Primary Diagnosis: Systemic Features; Healthcare Administration, Non-Surgical Procedures, Surgical Approach, Surgical Procedures, Wound Closure; Patient-Reported, Clinician-Reported, Adverse Events, Surrogate, Economical; Risk of Random Error, Risk of Bias: Before Interventions, Risk of Bias: At Interventions, Risk of Bias: After Interventions, Risk of Misconduct; Chart ID (Integer Autoincrement), Chart Creation Timestamp (Date/Time), Chart Last Edit Timestamp (Date/Time), Document Records (Links), Note (Free Text).
> 4. Five fields for the links to the document form.
> 5. Five fields in the document form: Patient / 1st Author Surname or Name (Free Text), Year of Birth / Publication or Age (Years) (Integer), MR No. / PMID / DOI / Other ID (Free Text), Name + Year + ID Unique Auto-Generated Label (Integer Autoincrement), Document Note (Free Text).

### Обсуждение | Discussion

Очередная разработка с неизвестным потенциалом, нуждающася в апробации.

В частности необходимо, во-первых, апробировать ее в том, для чего она была изначально предназначена — в [scoping-обзоре по рекомендациям по оказанию медицинской помощи при повреждениях позвоночника](https://osf.io/7vx5n/).

Во вторую очередь, если это апробация будет успешной, необходимо провести исследование сопоставимости СТМЗ Fives с формами картирования, использованными ранее в аналогичных работах. Для этого нужно будет выполнить систематический поиск в литературе таких работ, извлечь из этих работ формы картирования (извлечения) данных и каким-то воспроизводимым образом установить количественно их сопоставимость.

Если и второй этап будет успешен, то необходимо будет провести проспективную апробацию СТМЗ Fives в спектре различных исследований.
