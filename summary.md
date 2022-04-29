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
-   I have added vitamin D supplement use (`take_vd`) in the table.
    Notice that use of vitamin D supplement is associated with SLE
    (reverse-causation?).

<table>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">
level
</th>
<th style="text-align:left;">
No
</th>
<th style="text-align:left;">
Yes
</th>
<th style="text-align:left;">
p
</th>
<th style="text-align:left;">
test
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
n
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
77558
</td>
<td style="text-align:left;">
237
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
age (mean (SD))
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
58.65 (14.28)
</td>
<td style="text-align:left;">
57.33 (12.15)
</td>
<td style="text-align:left;">
0.1539
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
agecat (%)
</td>
<td style="text-align:left;">
30-39
</td>
<td style="text-align:left;">
7619 ( 9.8)
</td>
<td style="text-align:left;">
14 ( 5.9)
</td>
<td style="text-align:left;">
0.0218
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
40-59
</td>
<td style="text-align:left;">
35187 (45.4)
</td>
<td style="text-align:left;">
126 (53.2)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
\>=60
</td>
<td style="text-align:left;">
34752 (44.8)
</td>
<td style="text-align:left;">
97 (40.9)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
black (%)
</td>
<td style="text-align:left;">
White
</td>
<td style="text-align:left;">
56736 (73.2)
</td>
<td style="text-align:left;">
140 (59.1)
</td>
<td style="text-align:left;">
\<0.0001
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Black
</td>
<td style="text-align:left;">
20822 (26.8)
</td>
<td style="text-align:left;">
97 (40.9)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
sex (%)
</td>
<td style="text-align:left;">
Female
</td>
<td style="text-align:left;">
50322 (64.9)
</td>
<td style="text-align:left;">
220 (92.8)
</td>
<td style="text-align:left;">
\<0.0001
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Male
</td>
<td style="text-align:left;">
27236 (35.1)
</td>
<td style="text-align:left;">
17 ( 7.2)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
smkever (%)
</td>
<td style="text-align:left;">
Never
</td>
<td style="text-align:left;">
61942 (79.9)
</td>
<td style="text-align:left;">
173 (73.0)
</td>
<td style="text-align:left;">
0.0107
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Ever
</td>
<td style="text-align:left;">
15616 (20.1)
</td>
<td style="text-align:left;">
64 (27.0)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
educat3 (%)
</td>
<td style="text-align:left;">
HS or less
</td>
<td style="text-align:left;">
16933 (21.8)
</td>
<td style="text-align:left;">
48 (20.3)
</td>
<td style="text-align:left;">
0.3841
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Some college
</td>
<td style="text-align:left;">
30943 (39.9)
</td>
<td style="text-align:left;">
105 (44.3)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Col grad
</td>
<td style="text-align:left;">
29682 (38.3)
</td>
<td style="text-align:left;">
84 (35.4)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
vegstat3 (%)
</td>
<td style="text-align:left;">
Vegetarians
</td>
<td style="text-align:left;">
29782 (38.4)
</td>
<td style="text-align:left;">
68 (28.7)
</td>
<td style="text-align:left;">
0.0078
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Pesco
</td>
<td style="text-align:left;">
7457 ( 9.6)
</td>
<td style="text-align:left;">
24 (10.1)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Non-veg
</td>
<td style="text-align:left;">
40319 (52.0)
</td>
<td style="text-align:left;">
145 (61.2)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
take_vd (%)
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
67882 (87.5)
</td>
<td style="text-align:left;">
182 (76.8)
</td>
<td style="text-align:left;">
\<0.0001
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
9676 (12.5)
</td>
<td style="text-align:left;">
55 (23.2)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
bmi (mean (SD))
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
27.22 (6.03)
</td>
<td style="text-align:left;">
29.86 (9.19)
</td>
<td style="text-align:left;">
\<0.0001
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
bmicat (%)
</td>
<td style="text-align:left;">
Normal
</td>
<td style="text-align:left;">
31158 (40.2)
</td>
<td style="text-align:left;">
74 (31.2)
</td>
<td style="text-align:left;">
0.0020
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Overweight
</td>
<td style="text-align:left;">
26937 (34.7)
</td>
<td style="text-align:left;">
82 (34.6)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
Obese
</td>
<td style="text-align:left;">
19463 (25.1)
</td>
<td style="text-align:left;">
81 (34.2)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
</tbody>
</table>

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

### Exploring interactions

-   The use of vitamin D supplement was significantly associated with
    SLE. Is there any interaction between dietary patterns and vitamin D
    use? To explore this, the interaction term was added into the model
    5 above.

-   The interaction between dietary patterns and vitamin D use was
    significant (*p* = 0.0139). Based on the interaction model, the
    estimated odds ratio associated with vitamin D use was calculated
    for each dietary pattern

    -   Notice that among pesco-vegetarians the odds of SLE was 6 times
        higher for those who use vitamin D, compared to those who don’t
        use the supplement.

<table>
<thead>
<tr>
<th style="text-align:left;">
contrast
</th>
<th style="text-align:left;">
vegstat3
</th>
<th style="text-align:right;">
odds.ratio
</th>
<th style="text-align:right;">
asymp.LCL
</th>
<th style="text-align:right;">
asymp.UCL
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Yes / No
</td>
<td style="text-align:left;">
Non-veg
</td>
<td style="text-align:right;">
1.582861
</td>
<td style="text-align:right;">
1.0490533
</td>
<td style="text-align:right;">
2.388294
</td>
</tr>
<tr>
<td style="text-align:left;">
Yes / No
</td>
<td style="text-align:left;">
Vegetarians
</td>
<td style="text-align:right;">
1.624738
</td>
<td style="text-align:right;">
0.8992273
</td>
<td style="text-align:right;">
2.935601
</td>
</tr>
<tr>
<td style="text-align:left;">
Yes / No
</td>
<td style="text-align:left;">
Pesco
</td>
<td style="text-align:right;">
6.005771
</td>
<td style="text-align:right;">
2.6832266
</td>
<td style="text-align:right;">
13.442506
</td>
</tr>
</tbody>
</table>
