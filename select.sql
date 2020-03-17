/* Работа на 48 */

SELECT
if((spinality_type_manual_1 = "spinality-surgery" OR spinality_type_manual_1 = "spinality-ct-or-mri" OR spinality_type_manual_1 = "spinality-exam" OR spinality_type_manual_1 = "spinality-admission-dx") AND (spinality_type_manual_2 = "spinality-surgery" OR spinality_type_manual_2 = "spinality-ct-or-mri" OR spinality_type_manual_2 = "spinality-exam" OR spinality_type_manual_2 = "spinality-admission-dx"),2,if((spinality_type_manual_1 = "spinality-surgery" OR spinality_type_manual_1 = "spinality-ct-or-mri" OR spinality_type_manual_1 = "spinality-exam" OR spinality_type_manual_1 = "spinality-admission-dx") OR (spinality_type_manual_2 = "spinality-surgery" OR spinality_type_manual_2 = "spinality-ct-or-mri" OR spinality_type_manual_2 = "spinality-exam" OR spinality_type_manual_2 = "spinality-admission-dx"),1,0)) as "1-or-2-or-3-or-4-spinality",
if(spinality_type_manual_1 = "spinality-not-admission-dx" && spinality_type_manual_2 = "spinality-not-admission-dx",2,if(spinality_type_manual_1 = "spinality-not-admission-dx" OR spinality_type_manual_2 = "spinality-not-admission-dx",1,0)) as "5-spinality-not-admission-dx"
FROM `ft_form_7`

/* Разные статистики по базе */

SELECT count(*)
FROM `gsq_sx_ct_mri_dcd`;

/* count(*)
18851 */

select count(f1)
from
(SELECT count(*) f1
FROM `gsq_sx_ct_mri_dcd`
group by upi, mrn) t1;

/* count(f1)
9800 */

select count(f1)
from
(SELECT count(*) f1
FROM `gsq_sx_ct_mri_dcd`
where spinality_type='Спинальная операция'
group by upi, mrn) t1;

/* count(f1)
3468 */

select count(f1)
from
(SELECT count(*) f1
FROM `gsq_sx_ct_mri_dcd`
where spinality_type='Спинальная операция' and ward_field not like '%1%'
group by upi, mrn) t1;

/* count(f1)
382 */

select count(f1)
from
(SELECT count(*) f1
FROM `gsq_sx_ct_mri_dcd`
where spinality_type='Спинальная операция' and ward_field like '%1%'
group by upi, mrn) t1;

/* count(f1)
3086 */

SELECT /* Выводит ФИО и даты рождения людей, на которых более одного компьютерного номера. Выполнил для того, чтобы понять, как мне все-таки идентифицировать пациента: по ФИО + ДР или по комп. номеру, или и по тому, и по тому. Выдает несколько десятков людей, я по нескольким посмотрел — у всех одни и те же адреса. Выглядит крайне маловероятным, что там найдутся с одинаковыми ФИО и ДР, но чтобы разные люди. Так что ФИО + ДР буду использовать. А если будет интересно, можно будет потом все-таки исчерпывающе всю эту выдачу просмотреть.  */ t2.col_2, t2.col_3, t2.col_4, t2.col_5, t2.col_7, t4.col_2, t4.col_3, t4.col_4, t4.col_5, t4.col_7
FROM `ft_form_12` t2 left join (SELECT t3.col_2, t3.col_3, t3.col_4, t3.col_5, t3.col_7
FROM `ft_form_12` t3 group by t3.col_3, t3.col_4, t3.col_5, t3.col_7) t4 on t2.col_2=t4.col_2
where t4.col_2 is null
group by t2.col_2, t2.col_3, t2.col_4, t2.col_5, t2.col_7

/* 78 Datensätze */

select /* Выводит количество пациентов.  */ count(*)
from (SELECT count(*)
FROM `ft_form_12`
group by col_3, col_4, col_5, col_7) t

/* count(*)
17120 */
