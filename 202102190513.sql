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
