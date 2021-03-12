select f2.uid from `ft_form_1` f1 left join `ft_form_2` f2 on f1.`record` = f2.`submission_id`
WHERE f1.`upat_sf36_trng` IS NOT NULL AND f2.uid REGEXP '^[0-9]+$';

/* uids replaced with five asterisks for anonymity */

update `ft_form_12`
set `has_proms_croms` = 1
where `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****' OR `col_2` = '*****';

/* displaying those with proms/croms only */

update `ft_form_12`
set `is_finalized` = null;

update `ft_form_12`
set `is_finalized` = 'yes'
where `has_proms_croms` = 1;

/* ok; showing 342 records */

/* select only one among all records for a patient */

select submission_id
from `ft_form_12`
where `has_proms_croms` = '1'
group by col_2;

/* added a new field is_for_fill_out for the form filler to show what records to fill in so that they didn’t need to fill multiple records for a patient; uids replaced with five asterisks for anonymity */

update `ft_form_12`
set is_for_fill_out = 'yes'
where submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = ***** OR submission_id = *****;

/* ok; edited 90 records */

update `ft_form_12`
set is_for_fill_out = 'no'
where `has_proms_croms` = 1 and `is_for_fill_out` is null;

/* ok; edited 259 records (total is 349 not 342 now, as found PROM/CROM records for 7 more GSQ records during QA) */

/* select all eligible PATIENTS */

SELECT *
FROM `ft_form_12`
where has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark';

/* ok; returns 55 records */

/* select PATIENTS from all study arms */

SELECT *
FROM `ft_form_12`
where has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark' and study_arm = 'surgery';

/* ok; returns 30 records */

SELECT *
FROM `ft_form_12`
where has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark' and study_arm = 'nonoperative';

/* ok; returns 16 records */

SELECT *
FROM `ft_form_12`
where has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark' and study_arm = 'percutaneous';

/* ok; returns 9 records */

/* calculate SF-36 */

SELECT uid `Компьютерный номер`, study_arm `Группа исследования`, col_8 `Дата поступления`, col_19 `Дата операции`, t_pee_date `Дата опросника`,
(i3+i4+i5+i6+i7+i8+i9+i10+i11+i12)/10 `Physical functioning (PF)`,
(i13+i14+i15+i16)/4 `Role-physical (RP)`,
(i21+i22)/2 `Bodily pain (BP)`,
(i1+i33+i34+i35+i36)/5 `General health (GH)`,
(i23+i27+i29+i31)/4 `Vitality (VT)`,
(i20+i32)/2 `Social functioning (SF)`,
(i17+i18+i19)/3 `Role-emotional (RE)`,
(i24+i25+i26+i28+i30)/5 `Mental Health (MH)`
FROM
(
    SELECT uid, study_arm, col_8, col_19, t_pee_date,
    IF(`dv_pee_sf36_q1`='1',100,IF(`dv_pee_sf36_q1`='2',75,IF(`dv_pee_sf36_q1`='3',50,IF(`dv_pee_sf36_q1`='4',25,IF(`dv_pee_sf36_q1`='5',0,0))))) i1,
    IF(`dv_pee_sf36_q2`='1',100,IF(`dv_pee_sf36_q2`='2',75,IF(`dv_pee_sf36_q2`='3',50,IF(`dv_pee_sf36_q2`='4',25,IF(`dv_pee_sf36_q2`='5',0,0))))) i2,
    IF(`dv_pee_sf36_q3`='1',0,IF(`dv_pee_sf36_q3`='2',50,IF(`dv_pee_sf36_q3`='3',100,0))) i3,
    IF(`dv_pee_sf36_q4`='1',0,IF(`dv_pee_sf36_q4`='2',50,IF(`dv_pee_sf36_q4`='3',100,0))) i4,
    IF(`dv_pee_sf36_q5`='1',0,IF(`dv_pee_sf36_q5`='2',50,IF(`dv_pee_sf36_q5`='3',100,0))) i5,
    IF(`dv_pee_sf36_q6`='1',0,IF(`dv_pee_sf36_q6`='2',50,IF(`dv_pee_sf36_q6`='3',100,0))) i6,
    IF(`dv_pee_sf36_q7`='1',0,IF(`dv_pee_sf36_q7`='2',50,IF(`dv_pee_sf36_q7`='3',100,0))) i7,
    IF(`dv_pee_sf36_q8`='1',0,IF(`dv_pee_sf36_q8`='2',50,IF(`dv_pee_sf36_q8`='3',100,0))) i8,
    IF(`dv_pee_sf36_q9`='1',0,IF(`dv_pee_sf36_q9`='2',50,IF(`dv_pee_sf36_q9`='3',100,0))) i9,
    IF(`dv_pee_sf36_q10`='1',0,IF(`dv_pee_sf36_q10`='2',50,IF(`dv_pee_sf36_q10`='3',100,0))) i10,
    IF(`dv_pee_sf36_q11`='1',0,IF(`dv_pee_sf36_q11`='2',50,IF(`dv_pee_sf36_q11`='3',100,0))) i11,
    IF(`dv_pee_sf36_q12`='1',0,IF(`dv_pee_sf36_q12`='2',50,IF(`dv_pee_sf36_q12`='3',100,0))) i12,
    IF(`dv_pee_sf36_q13`='1',0,IF(`dv_pee_sf36_q13`='2',100,0)) i13,
    IF(`dv_pee_sf36_q14`='1',0,IF(`dv_pee_sf36_q14`='2',100,0)) i14,
    IF(`dv_pee_sf36_q15`='1',0,IF(`dv_pee_sf36_q15`='2',100,0)) i15,
    IF(`dv_pee_sf36_q16`='1',0,IF(`dv_pee_sf36_q16`='2',100,0)) i16,
    IF(`dv_pee_sf36_q17`='1',0,IF(`dv_pee_sf36_q17`='2',100,0)) i17,
    IF(`dv_pee_sf36_q18`='1',0,IF(`dv_pee_sf36_q18`='2',100,0)) i18,
    IF(`dv_pee_sf36_q19`='1',0,IF(`dv_pee_sf36_q19`='2',100,0)) i19,
    IF(`dv_pee_sf36_q20`='1',100,IF(`dv_pee_sf36_q20`='2',75,IF(`dv_pee_sf36_q20`='3',50,IF(`dv_pee_sf36_q20`='4',25,IF(`dv_pee_sf36_q20`='5',0,0))))) i20,
    IF(`dv_pee_sf36_q21`='1',100,IF(`dv_pee_sf36_q21`='2',80,IF(`dv_pee_sf36_q21`='3',60,IF(`dv_pee_sf36_q21`='4',40,IF(`dv_pee_sf36_q21`='5',20,IF(`dv_pee_sf36_q21`='6',0,0)))))) i21,
    IF(`dv_pee_sf36_q22`='1',100,IF(`dv_pee_sf36_q22`='2',75,IF(`dv_pee_sf36_q22`='3',50,IF(`dv_pee_sf36_q22`='4',25,IF(`dv_pee_sf36_q22`='5',0,0))))) i22,
    IF(`dv_pee_sf36_q23`='1',100,IF(`dv_pee_sf36_q23`='2',80,IF(`dv_pee_sf36_q23`='3',60,IF(`dv_pee_sf36_q23`='4',40,IF(`dv_pee_sf36_q23`='5',20,IF(`dv_pee_sf36_q23`='6',0,0)))))) i23,
    IF(`dv_pee_sf36_q24`='1',0,IF(`dv_pee_sf36_q24`='2',20,IF(`dv_pee_sf36_q24`='3',40,IF(`dv_pee_sf36_q24`='4',60,IF(`dv_pee_sf36_q24`='5',80,IF(`dv_pee_sf36_q24`='6',100,0)))))) i24,
    IF(`dv_pee_sf36_q25`='1',0,IF(`dv_pee_sf36_q25`='2',20,IF(`dv_pee_sf36_q25`='3',40,IF(`dv_pee_sf36_q25`='4',60,IF(`dv_pee_sf36_q25`='5',80,IF(`dv_pee_sf36_q25`='6',100,0)))))) i25,
    IF(`dv_pee_sf36_q26`='1',100,IF(`dv_pee_sf36_q26`='2',80,IF(`dv_pee_sf36_q26`='3',60,IF(`dv_pee_sf36_q26`='4',40,IF(`dv_pee_sf36_q26`='5',20,IF(`dv_pee_sf36_q26`='6',0,0)))))) i26,
    IF(`dv_pee_sf36_q27`='1',100,IF(`dv_pee_sf36_q27`='2',80,IF(`dv_pee_sf36_q27`='3',60,IF(`dv_pee_sf36_q27`='4',40,IF(`dv_pee_sf36_q27`='5',20,IF(`dv_pee_sf36_q27`='6',0,0)))))) i27,
    IF(`dv_pee_sf36_q28`='1',0,IF(`dv_pee_sf36_q28`='2',20,IF(`dv_pee_sf36_q28`='3',40,IF(`dv_pee_sf36_q28`='4',60,IF(`dv_pee_sf36_q28`='5',80,IF(`dv_pee_sf36_q28`='6',100,0)))))) i28,
    IF(`dv_pee_sf36_q29`='1',0,IF(`dv_pee_sf36_q29`='2',20,IF(`dv_pee_sf36_q29`='3',40,IF(`dv_pee_sf36_q29`='4',60,IF(`dv_pee_sf36_q29`='5',80,IF(`dv_pee_sf36_q29`='6',100,0)))))) i29,
    IF(`dv_pee_sf36_q30`='1',100,IF(`dv_pee_sf36_q30`='2',80,IF(`dv_pee_sf36_q30`='3',60,IF(`dv_pee_sf36_q30`='4',40,IF(`dv_pee_sf36_q30`='5',20,IF(`dv_pee_sf36_q30`='6',0,0)))))) i30,
    IF(`dv_pee_sf36_q31`='1',0,IF(`dv_pee_sf36_q31`='2',20,IF(`dv_pee_sf36_q31`='3',40,IF(`dv_pee_sf36_q31`='4',60,IF(`dv_pee_sf36_q31`='5',80,IF(`dv_pee_sf36_q31`='6',100,0)))))) i31,
    IF(`dv_pee_sf36_q32`='1',0,IF(`dv_pee_sf36_q32`='2',25,IF(`dv_pee_sf36_q32`='3',50,IF(`dv_pee_sf36_q32`='4',75,IF(`dv_pee_sf36_q32`='5',100,0))))) i32,
    IF(`dv_pee_sf36_q33`='1',0,IF(`dv_pee_sf36_q33`='2',25,IF(`dv_pee_sf36_q33`='3',50,IF(`dv_pee_sf36_q33`='4',75,IF(`dv_pee_sf36_q33`='5',100,0))))) i33,
    IF(`dv_pee_sf36_q34`='1',100,IF(`dv_pee_sf36_q34`='2',75,IF(`dv_pee_sf36_q34`='3',50,IF(`dv_pee_sf36_q34`='4',25,IF(`dv_pee_sf36_q34`='5',0,0))))) i34,
    IF(`dv_pee_sf36_q35`='1',0,IF(`dv_pee_sf36_q35`='2',25,IF(`dv_pee_sf36_q35`='3',50,IF(`dv_pee_sf36_q35`='4',75,IF(`dv_pee_sf36_q35`='5',100,0))))) i35,
    IF(`dv_pee_sf36_q36`='1',100,IF(`dv_pee_sf36_q36`='2',75,IF(`dv_pee_sf36_q36`='3',50,IF(`dv_pee_sf36_q36`='4',25,IF(`dv_pee_sf36_q36`='5',0,0))))) i36
    FROM `ft_form_1` f1 left join ft_form_2 f2 on f1.record = f2.submission_id left join ft_form_12 f12 on f2.uid = f12.col_2
    WHERE has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark'
) sf36
                                                                                            
/* returned 65 records (more than one SF-36 for a patient) – see sql_sf36.csv (uids replaced with five asterisks for anonymity) */
                                                                                            
/* show only eligible for study and ineligible for vertebroplasty; uids replaced with five asterisks for anonymity */
                                                                                            
SELECT col_2
FROM `ft_form_12`
where has_proms_croms = 1 and is_for_fill_out = 'yes' and eligibility != 'cross-mark' and is_needle_candidate = 'cross-mark';

update `ft_form_12`
set is_finalized = null;

update `ft_form_12`
set is_finalized = 'yes'
where col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = ***** OR col_2 = *****;

/* ok; 28 patients; 110 records */
