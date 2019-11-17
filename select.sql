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
