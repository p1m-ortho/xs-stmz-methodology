SELECT
/* 80_ntm_pvz_pre-consensus.csv @ http://convertcsv.com/query-csv.htm */
/* 0 not excluded */
if([Pavel] = 'not excluded' AND [Наташа] = 'not excluded', 2, if ([Pavel] = 'not excluded' OR [Наташа] = 'not excluded', 1, 0)) as `0_not_excluded`,
/* 1 wrong publication type */
if([Pavel] = 'wrong publication type' AND [Наташа] = 'wrong publication type', 2, if ([Pavel] = 'wrong publication type' OR [Наташа] = 'wrong publication type', 1, 0)) as `1_wrong_publication_type`,
/* 2 background article */
if([Pavel] = 'background article' AND [Наташа] = 'background article', 2, if ([Pavel] = 'background article' OR [Наташа] = 'background article', 1, 0)) as `2_background_article`,
/* 3 wrong population */
if([Pavel] = 'wrong population' AND [Наташа] = 'wrong population', 2, if ([Pavel] = 'wrong population' OR [Наташа] = 'wrong population', 1, 0)) as `3_wrong_population`,
/* 4 wrong drug */
if([Pavel] = 'wrong drug' AND [Наташа] = 'wrong drug', 2, if ([Pavel] = 'wrong drug' OR [Наташа] = 'wrong drug', 1, 0)) as `4_wrong_drug`,
/* 5 wrong study design */
if([Pavel] = 'wrong study design' AND [Наташа] = 'wrong study design', 2, if ([Pavel] = 'wrong study design' OR [Наташа] = 'wrong study design', 1, 0)) as `5_study_design`,
/* 6 wrong outcome */
if([Pavel] = 'wrong outcome' AND [Наташа] = 'wrong outcome', 2, if ([Pavel] = 'wrong outcome' OR [Наташа] = 'wrong outcome', 1, 0)) as `6_wrong_outcome`,
/* 8 foreign language */
if([Pavel] = 'foreign language' AND [Наташа] = 'foreign language', 2, if ([Pavel] = 'foreign language' OR [Наташа] = 'foreign language', 1, 0)) as `8_foreign_language`
INTO CSV(null,{headers:true,separator:','})
FROM ?