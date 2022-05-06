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
    -   Notice that use of vitamin D or fish oil supplement is
        associated with SLE (reverse-causation?).

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
0.154
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
0.022
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
\<0.001
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
\<0.001
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
0.011
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
0.384
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
0.008
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
\<0.001
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
take_fo (%)
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
69406 (89.5)
</td>
<td style="text-align:left;">
191 (80.6)
</td>
<td style="text-align:left;">
\<0.001
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
8152 (10.5)
</td>
<td style="text-align:left;">
46 (19.4)
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
\<0.001
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
0.002
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
    -   Model 3 further adds education levels
    -   Model 4 further adds smoking history
    -   Model 5 further adds BMI categories and energy intake (kcal as
        continuous)
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
0.50
</td>
<td>
0.51
</td>
<td>
0.52
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
(0.28, 0.88)
</td>
<td>
(0.29, 0.90)
</td>
<td>
(0.30, 0.93)
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
1.10
</td>
<td>
1.08
</td>
<td>
1.08
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
(0.83, 1.45)
</td>
<td>
(0.82, 1.42)
</td>
<td>
(0.82, 1.42)
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
1.68
</td>
<td>
1.69
</td>
<td>
1.62
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
(1.28, 2.20)
</td>
<td>
(1.29, 2.21)
</td>
<td>
(1.23, 2.13)
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
0.15
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
(0.09, 0.24)
</td>
<td>
(0.08, 0.22)
</td>
<td>
(0.08, 0.22)
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
0.71
</td>
<td>
0.75
</td>
<td>
0.79
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
(0.52, 0.95)
</td>
<td>
(0.56, 1.02)
</td>
<td>
(0.58, 1.08)
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
0.84
</td>
<td>
0.88
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
(0.54, 1.30)
</td>
<td>
(0.57, 1.36)
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
Educ: HS or less
</td>
<td>
</td>
<td>
</td>
<td>
0.80
</td>
<td>
0.72
</td>
<td>
0.70
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
(0.55, 1.15)
</td>
<td>
(0.49, 1.04)
</td>
<td>
(0.48, 1.02)
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
0.94
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
(0.70, 1.26)
</td>
<td>
(0.65, 1.17)
</td>
<td>
(0.64, 1.16)
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
1.71
</td>
<td>
1.68
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
(1.27, 2.31)
</td>
<td>
(1.25, 2.27)
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
1.29
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
(0.93, 1.78)
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
1.32
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
(0.95, 1.85)
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
Kcal / 100
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
1.00
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
(0.98, 1.02)
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
