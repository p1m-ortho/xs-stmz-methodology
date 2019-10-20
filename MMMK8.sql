/* Сырой экспорт истории из СУБД (без данных) */

CREATE TABLE `201910191129` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Пациент` text NOT NULL,
  `UPI НИИ СП` text NOT NULL,
  `Вероятная нозология по AOSpine` text NOT NULL,
  `Число СКТ ШОП` int NOT NULL,
  `Число СКТ ГОП` int NOT NULL,
  `Число СКТ ПОП` int NOT NULL,
  `Число МРТ ШОП` int NOT NULL,
  `Число МРТ ГОП` int NOT NULL,
  `Число МРТ ПОП` int NOT NULL,
  `Решение по 2019-03-22_2104` text NOT NULL,
  `Предварительное решение по 2019-03-22_2301` text NOT NULL
) ENGINE='InnoDB';

SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA';


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` is not null
;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
group by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
group by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and `Вероятная нозология по AOSpine` = `Травма`
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and `Вероятная нозология по AOSpine` = 'Травма'
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and `Вероятная нозология по AOSpine` = 'Спондилодисцит
'
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and `Вероятная нозология по AOSpine` = 'Спондилодисцит'
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and `Вероятная нозология по AOSpine` = 'ДДЗП'
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число СКТ ШОП`+`Число СКТ ГОП`+`Число СКТ ПОП`+`Число МРТ ШОП`+`Число МРТ ГОП`+`Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число СКТ ШОП`+`Число СКТ ГОП`+`Число СКТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число МРТ ШОП`+`Число МРТ ГОП`+`Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число СКТ ШОП`+`Число МРТ ШОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число СКТ ГОП`+`Число МРТ ГОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT sum(`Число СКТ ПОП`+`Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and (`Число СКТ ШОП` > 6 or `Число СКТ ГОП` > 6 or `Число СКТ ПОП` > 6 or `Число МРТ ШОП` > 6 or `Число МРТ ГОП` > 6 or `Число МРТ ПОП` > 6)
order by `UPI НИИ СП`;


SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and (`Число СКТ ШОП` = 6 or `Число СКТ ГОП` = 6 or `Число СКТ ПОП` = 6 or `Число МРТ ШОП` = 6 or `Число МРТ ГОП` = 6 or `Число МРТ ПОП` = 6)
order by `UPI НИИ СП`;



SELECT *
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and (`Число СКТ ШОП` = 5 or `Число СКТ ГОП` = 5 or `Число СКТ ПОП` = 5 or `Число МРТ ШОП` = 5 or `Число МРТ ГОП` = 5 or `Число МРТ ПОП` = 5)
order by `UPI НИИ СП`;



SELECT greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`)
order by `UPI НИИ СП`;
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
;


SELECT greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;



SELECT *, greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;



SELECT `Пациент`, greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;



SELECT *, greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`)
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != ''
order by `UPI НИИ СП`;



SELECT *, case when id = 15 or id = 11 then 4 else greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`) end
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and id != 27 and id != 33
order by `UPI НИИ СП`;



SELECT `Пациент`, case when id = 15 or id = 11 then 4 else greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`) end
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and id != 27 and id != 33
order by `UPI НИИ СП`;



SELECT `Пациент`, case when id = 15 or id = 11 then 4 else greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`) end `FU`
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and id != 27 and id != 33
order by `FU`;


SELECT `Пациент`, case when id = 15 or id = 11 then 4 else greatest(`Число СКТ ШОП`, `Число СКТ ГОП`, `Число СКТ ПОП`, `Число МРТ ШОП`, `Число МРТ ГОП`, `Число МРТ ПОП`) end `Точек наблюдения`
FROM `201910191129`
where `UPI НИИ СП` != 'NA' and `Вероятная нозология по AOSpine` != '' and id != 27 and id != 33
order by `Точек наблюдения`;

SELECT t1.*
FROM `201910191129` t1 left join gsq_sx_ct_mri_dcd t2 on t1.`UPI НИИ СП` = t2.upi
where t2.spinality_type = 'Спинальная операция'
group by t1.id
order by t2.upi;

