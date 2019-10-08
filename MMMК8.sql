/* Экспорт из Adminer таблицы */

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `mmmk8`;
CREATE TABLE `mmmk8` (
  `ID` int(11) NOT NULL,
  `TP_NTM` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TP_SAS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `P` int(11) NOT NULL,
  `DIAG_NAPR` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRNG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*

Расчет согласия

Для расчета согласия используем свободнопредельную каппу Коэна (с 95%-ным ДИ) при помощи калькулятора:

https://www.graphpad.com/quickcalcs/kappa1/

Интерпретацию каппы Коэна проведем согласно таблице (Landis, JR & Koch, GG (1977). The measurement of observer agreement for categorical data. Biometrics, 33, 159-174):

0.01 – 0.20 slight agreement
0.21 – 0.40 fair agreement
0.41 – 0.60 moderate agreement
0.61 – 0.80 substantial agreement
0.81 – 1.00 almost perfect or perfect agreement

Если полученное значение нижней границы 95%-ного ДИ каппы будет больше 0,6 (существенное согласие), то при расчете показателей диагностической информативности будем использовать выборку записей, просмотренных НТМ.

Иначе при расчете показателей диагностической информативности будем использовать выборку записей, для которых было согласие обоих скринеров (НТМ, САС).

Решение о значении точки отсечения (0,6) приняли совместно в порядке дискуссии ПВЖ и НТМ.

*/


SELECT count(*)
FROM `mmmk8`
where `TP_SAS` = 'X';

/*

count(*)
685

*/

/* Встал вопрос о количестве записей, просмотренных каждым из скринеров. Известно, что скрининг записей проводили в порядке их следования. */

SELECT max(`ID`)-685
FROM `mmmk8`
where `TP_SAS` = 'X';

/*

max(`ID`)-685
13410

*/

SELECT count(*)
FROM `mmmk8`
where `TP_NTM` = 'X';

/*

count(*)
1748

*/

/*

685 + 13410 = 14095

14095 - 1748 = 12347

*/

/*

	A	B	Total
A	1748	12347	14095
B	685	13410	14095
Total	2433	25757	28190
Number of observed agreements: 15158 ( 53.77% of the observations) 
Number of agreements expected by chance: 14095.0 ( 50.00% of the observations)
Kappa= 0.075 
SE of kappa = 0.003 
95% confidence interval: From 0.069 to 0.082 

"One way to interpret kappa is with this scale (1):
Kappa < 0: No agreement
Kappa between 0.00 and 0.20: Slight agreement
Kappa between 0.21 and 0.40: Fair agreement
Kappa between 0.41 and 0.60: Moderate agreement
Kappa between 0.61 and 0.80: Substantial agreement
Kappa between 0.81 and 1.00: Almost perfect agreement."
1. Landis, J.R.; Koch, G.G. (1977). The measurement of observer agreement for categorical data. Biometrics. 33 (1): 159-174. https://doi.org/10.2307%2F2529310

The calculator was updated in July 2014 so it doesn't try to compute the SE or CI when Kappa = 0.0.
This calculator was changed in April 2011 to use a better equation for computing the SE and confidence interval of Kappa. It now uses equations 18.16 to 18.20 from Fleiss, Statistical Methods for Rates & Proportions (3rd edition) . It did not work between Aug. 1 and Sept 7, 2012.

*/

/*

Расчет показателей диагностической информативности регулярного выражения

Будем расчитывать следующие показатели (https://en.wikipedia.org/wiki/Sensitivity_and_specificity) с их 95%-ными ДИ:

sensitivity, recall, hit rate, or true positive rate (TPR)
{\displaystyle \mathrm {TPR} ={\frac {\mathrm {TP} }{\mathrm {P} }}={\frac {\mathrm {TP} }{\mathrm {TP} +\mathrm {FN} }}=1-\mathrm {FNR} }

specificity, selectivity or true negative rate (TNR)
{\displaystyle \mathrm {TNR} ={\frac {\mathrm {TN} }{\mathrm {N} }}={\frac {\mathrm {TN} }{\mathrm {TN} +\mathrm {FP} }}=1-\mathrm {FPR} }

precision or positive predictive value (PPV)
{\displaystyle \mathrm {PPV} ={\frac {\mathrm {TP} }{\mathrm {TP} +\mathrm {FP} }}=1-\mathrm {FDR} }

negative predictive value (NPV)
{\displaystyle \mathrm {NPV} ={\frac {\mathrm {TN} }{\mathrm {TN} +\mathrm {FN} }}=1-\mathrm {FOR} }

Расчет произведем на калькуляторе:

https://www2.ccrb.cuhk.edu.hk/stat/confidence%20interval/Diagnostic%20Statistic.htm

*/
