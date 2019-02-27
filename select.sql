SELECT
/* 80_ntm_pvz_pre-consensus.csv @ http://convertcsv.com/query-csv.htm */
/* not excluded */
if([Pavel] = 'not excluded' AND [Наташа] = 'not excluded', 2, if ([Pavel] = 'not excluded' OR [Наташа] = 'not excluded', 1, 0)) as `not_excluded`,
/* excluded */
if([Pavel] <> 'not excluded' AND [Наташа] <> 'not excluded', 2, if ([Pavel] <> 'not excluded' OR [Наташа] <> 'not excluded', 1, 0)) as `excluded`
INTO CSV(null,{headers:true,separator:','})
FROM ?