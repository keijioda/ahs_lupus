AHS-2 lupus study
================

## Dataset

-   Filename: `lupus-initial-dataset-v1-2022-04-25.csv`
    -   Data received on 4/25/2022
    -   Includes *n* = 93467 subjects and 111 variables
    -   No imputations
-   To create an analytic file:
    -   Included only non-Hispanic White or Black
    -   Excluded if age at baseline \< 30 years
    -   Excluded extreme energy intake of \<500 or \>4500 kcal
    -   Excluded any subjects with missing gender, education, smoking
        history, dietary pattern and BMI
    -   This resulted in *n* = 77795 subjects (15672 subjects were
        excluded)

## Outcome

-   Prevalent cases of SLE were identified using the baseline
    questionnaire
    -   Includes only those who “have been treated for SLE in the last
        12 months” at baseline
    -   (“Years since the 1st diagnosis” was not used, following the
        case definition in the manuscript)
-   There were 237 prevalent cases (0.3%) of SLE

## Descriptive table

-   Descriptive table stratified by cases/non-cases
    -   Variables were categorized following the original manuscript

|                 | level        | No            | Yes           | p        | test |
|:----------------|:-------------|:--------------|:--------------|:---------|:-----|
| n               |              | 77558         | 237           |          |      |
| age (mean (SD)) |              | 58.65 (14.28) | 57.33 (12.15) | 0.1539   |      |
| agecat (%)      | 30-39        | 7619 ( 9.8)   | 14 ( 5.9)     | 0.0218   |      |
|                 | 40-59        | 35187 (45.4)  | 126 (53.2)    |          |      |
|                 | \>=60        | 34752 (44.8)  | 97 (40.9)     |          |      |
| black (%)       | White        | 56736 (73.2)  | 140 (59.1)    | \<0.0001 |      |
|                 | Black        | 20822 (26.8)  | 97 (40.9)     |          |      |
| sex (%)         | Female       | 50322 (64.9)  | 220 (92.8)    | \<0.0001 |      |
|                 | Male         | 27236 (35.1)  | 17 ( 7.2)     |          |      |
| smkever (%)     | Never        | 61942 (79.9)  | 173 (73.0)    | 0.0107   |      |
|                 | Ever         | 15616 (20.1)  | 64 (27.0)     |          |      |
| educat3 (%)     | HS or less   | 16933 (21.8)  | 48 (20.3)     | 0.3841   |      |
|                 | Some college | 30943 (39.9)  | 105 (44.3)    |          |      |
|                 | Col grad     | 29682 (38.3)  | 84 (35.4)     |          |      |
| vegstat3 (%)    | Vegetarians  | 29782 (38.4)  | 68 (28.7)     | 0.0078   |      |
|                 | Pesco        | 7457 ( 9.6)   | 24 (10.1)     |          |      |
|                 | Non-veg      | 40319 (52.0)  | 145 (61.2)    |          |      |
| take_vd (%)     | No           | 67882 (87.5)  | 182 (76.8)    | \<0.0001 |      |
|                 | Yes          | 9676 (12.5)   | 55 (23.2)     |          |      |
| bmi (mean (SD)) |              | 27.22 (6.03)  | 29.86 (9.19)  | \<0.0001 |      |
| bmicat (%)      | Normal       | 31158 (40.2)  | 74 (31.2)     | 0.0020   |      |
|                 | Overweight   | 26937 (34.7)  | 82 (34.6)     |          |      |
|                 | Obese        | 19463 (25.1)  | 81 (34.2)     |          |      |

## Logistic regression on demographics and lifestyles

-   Four logistic models were fitted using prevalent SLE as the outcome.
    -   Model 1 includes: age, race and gender
    -   Model 2 adds dietary patterns
    -   Model 3 further adds vitamin D supplement use
    -   Model 4 further adds smoking history and education levels
    -   Model 5 further adds BMI categories
    -   (I have changed references in some variables)
-   The table below shows estimated odds ratios and 95% Wald confidence
    intervals from each logistic model:

<table style="text-align:center">
<tr>
<td colspan="6" style="border-bottom: 1px solid black">
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td colspan="5">
Outcome: Prevalent SLE
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
Model 1
</td>
<td>
Model 2
</td>
<td>
Model 3
</td>
<td>
Model 4
</td>
<td>
Model 5
</td>
</tr>
<tr>
<td colspan="6" style="border-bottom: 1px solid black">
</td>
</tr>
<tr>
<td style="text-align:left">
Age.: 30-39
</td>
<td>
0.53
</td>
<td>
0.52
</td>
<td>
0.57
</td>
<td>
0.56
</td>
<td>
0.57
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
(0.30, 0.93)
</td>
<td>
(0.30, 0.92)
</td>
<td>
(0.32, 1.00)
</td>
<td>
(0.31, 0.99)
</td>
<td>
(0.32, 1.02)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Age.: 40-59
</td>
<td>
1.15
</td>
<td>
1.14
</td>
<td>
1.19
</td>
<td>
1.13
</td>
<td>
1.13
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
(0.88, 1.50)
</td>
<td>
(0.87, 1.49)
</td>
<td>
(0.91, 1.56)
</td>
<td>
(0.86, 1.49)
</td>
<td>
(0.86, 1.49)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Race: Black
</td>
<td>
1.78
</td>
<td>
1.67
</td>
<td>
1.72
</td>
<td>
1.73
</td>
<td>
1.66
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
(1.37, 2.32)
</td>
<td>
(1.27, 2.20)
</td>
<td>
(1.31, 2.26)
</td>
<td>
(1.32, 2.27)
</td>
<td>
(1.26, 2.18)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Sex.: Male
</td>
<td>
0.15
</td>
<td>
0.15
</td>
<td>
0.16
</td>
<td>
0.14
</td>
<td>
0.14
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
(0.09, 0.24)
</td>
<td>
(0.09, 0.24)
</td>
<td>
(0.10, 0.26)
</td>
<td>
(0.09, 0.24)
</td>
<td>
(0.09, 0.24)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Diet: Vegetarians
</td>
<td>
</td>
<td>
0.73
</td>
<td>
0.73
</td>
<td>
0.76
</td>
<td>
0.80
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
(0.54, 0.98)
</td>
<td>
(0.54, 0.98)
</td>
<td>
(0.56, 1.03)
</td>
<td>
(0.59, 1.09)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Diet: Pesco veg
</td>
<td>
</td>
<td>
0.85
</td>
<td>
0.85
</td>
<td>
0.87
</td>
<td>
0.92
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
(0.55, 1.32)
</td>
<td>
(0.55, 1.31)
</td>
<td>
(0.57, 1.35)
</td>
<td>
(0.59, 1.42)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
VitD: Use VD supp
</td>
<td>
</td>
<td>
</td>
<td>
1.90
</td>
<td>
1.88
</td>
<td>
1.90
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
(1.40, 2.58)
</td>
<td>
(1.38, 2.55)
</td>
<td>
(1.40, 2.58)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Smkg: Ever
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
1.70
</td>
<td>
1.67
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
(1.26, 2.30)
</td>
<td>
(1.24, 2.25)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Educ: HS or less
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
0.73
</td>
<td>
0.72
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
(0.50, 1.06)
</td>
<td>
(0.49, 1.04)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
Educ: Some college
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
0.87
</td>
<td>
0.86
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
(0.65, 1.17)
</td>
<td>
(0.64, 1.15)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
BMI.: Overweight
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
1.30
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
(0.94, 1.79)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td style="text-align:left">
BMI.: Obese
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
1.36
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
(0.98, 1.90)
</td>
</tr>
<tr>
<td style="text-align:left">
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td colspan="6" style="border-bottom: 1px solid black">
</td>
</tr>
<tr>
<td style="text-align:left">
Observations
</td>
<td>
77,795
</td>
<td>
77,795
</td>
<td>
77,795
</td>
<td>
77,795
</td>
<td>
77,795
</td>
</tr>
<tr>
<td colspan="6" style="border-bottom: 1px solid black">
</td>
</tr>
</table>
