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
