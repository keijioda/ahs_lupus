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

-   I have changed column percentages to row percentages.

<table class="gmisc_table" style="border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;">
<thead>
<tr>
<td colspan="5" style="text-align: left;">
Table 1: Participant characteristics
</td>
</tr>
<tr>
<th style="border-bottom: 1px solid grey; border-top: 2px solid grey;">
</th>
<th style="font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;">
No<br /> n = 77,558
</th>
<th style="font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;">
Yes<br /> n = 237
</th>
<th style="font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;">
Total<br /> n = 77,795
</th>
<th style="font-weight: 900; border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;">
P-value
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">
Age (year)
</td>
<td style="text-align: center;">
58.7 (±14.3)
</td>
<td style="text-align: center;">
57.3 (±12.1)
</td>
<td style="text-align: center;">
58.6 (±14.3)
</td>
<td style="text-align: center;">
0.15
</td>
</tr>
<tr>
<td colspan="4" style>
Age group
</td>
<td style="text-align: center;">
0.022
</td>
</tr>
<tr>
<td style="text-align: left;">
  30-39
</td>
<td style="text-align: center;">
7,619 (99.8%)
</td>
<td style="text-align: center;">
14 (0.2%)
</td>
<td style="text-align: center;">
7,633 (9.8%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  40-59
</td>
<td style="text-align: center;">
35,187 (99.6%)
</td>
<td style="text-align: center;">
126 (0.4%)
</td>
<td style="text-align: center;">
35,313 (45.4%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  \>=60
</td>
<td style="text-align: center;">
34,752 (99.7%)
</td>
<td style="text-align: center;">
97 (0.3%)
</td>
<td style="text-align: center;">
34,849 (44.8%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Race
</td>
<td style="text-align: center;">
\< 0.0001
</td>
</tr>
<tr>
<td style="text-align: left;">
  White
</td>
<td style="text-align: center;">
56,736 (99.8%)
</td>
<td style="text-align: center;">
140 (0.2%)
</td>
<td style="text-align: center;">
56,876 (73.1%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Black
</td>
<td style="text-align: center;">
20,822 (99.5%)
</td>
<td style="text-align: center;">
97 (0.5%)
</td>
<td style="text-align: center;">
20,919 (26.9%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Gender
</td>
<td style="text-align: center;">
\< 0.0001
</td>
</tr>
<tr>
<td style="text-align: left;">
  Female
</td>
<td style="text-align: center;">
50,322 (99.6%)
</td>
<td style="text-align: center;">
220 (0.4%)
</td>
<td style="text-align: center;">
50,542 (65.0%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Male
</td>
<td style="text-align: center;">
27,236 (99.9%)
</td>
<td style="text-align: center;">
17 (0.1%)
</td>
<td style="text-align: center;">
27,253 (35.0%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Smoking
</td>
<td style="text-align: center;">
0.011
</td>
</tr>
<tr>
<td style="text-align: left;">
  Never
</td>
<td style="text-align: center;">
61,942 (99.7%)
</td>
<td style="text-align: center;">
173 (0.3%)
</td>
<td style="text-align: center;">
62,115 (79.8%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Ever
</td>
<td style="text-align: center;">
15,616 (99.6%)
</td>
<td style="text-align: center;">
64 (0.4%)
</td>
<td style="text-align: center;">
15,680 (20.2%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Education
</td>
<td style="text-align: center;">
0.38
</td>
</tr>
<tr>
<td style="text-align: left;">
  HS or less
</td>
<td style="text-align: center;">
16,933 (99.7%)
</td>
<td style="text-align: center;">
48 (0.3%)
</td>
<td style="text-align: center;">
16,981 (21.8%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Some college
</td>
<td style="text-align: center;">
30,943 (99.7%)
</td>
<td style="text-align: center;">
105 (0.3%)
</td>
<td style="text-align: center;">
31,048 (39.9%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Col grad
</td>
<td style="text-align: center;">
29,682 (99.7%)
</td>
<td style="text-align: center;">
84 (0.3%)
</td>
<td style="text-align: center;">
29,766 (38.3%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Dietary pattern
</td>
<td style="text-align: center;">
0.008
</td>
</tr>
<tr>
<td style="text-align: left;">
  Vegetarians
</td>
<td style="text-align: center;">
29,782 (99.8%)
</td>
<td style="text-align: center;">
68 (0.2%)
</td>
<td style="text-align: center;">
29,850 (38.4%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Pesco
</td>
<td style="text-align: center;">
7,457 (99.7%)
</td>
<td style="text-align: center;">
24 (0.3%)
</td>
<td style="text-align: center;">
7,481 (9.6%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Non-veg
</td>
<td style="text-align: center;">
40,319 (99.6%)
</td>
<td style="text-align: center;">
145 (0.4%)
</td>
<td style="text-align: center;">
40,464 (52.0%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td colspan="4" style>
Use of vit D supp
</td>
<td style="text-align: center;">
\< 0.0001
</td>
</tr>
<tr>
<td style="text-align: left;">
  No
</td>
<td style="text-align: center;">
67,882 (99.7%)
</td>
<td style="text-align: center;">
182 (0.3%)
</td>
<td style="text-align: center;">
68,064 (87.5%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Yes
</td>
<td style="text-align: center;">
9,676 (99.4%)
</td>
<td style="text-align: center;">
55 (0.6%)
</td>
<td style="text-align: center;">
9,731 (12.5%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
BMI (kg/m&sup2)
</td>
<td style="text-align: center;">
27.2 (±6.0)
</td>
<td style="text-align: center;">
29.9 (±9.2)
</td>
<td style="text-align: center;">
27.2 (±6.0)
</td>
<td style="text-align: center;">
\< 0.0001
</td>
</tr>
<tr>
<td colspan="4" style>
BMI category
</td>
<td style="text-align: center;">
0.002
</td>
</tr>
<tr>
<td style="text-align: left;">
  Normal
</td>
<td style="text-align: center;">
31,158 (99.8%)
</td>
<td style="text-align: center;">
74 (0.2%)
</td>
<td style="text-align: center;">
31,232 (40.1%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="text-align: left;">
  Overweight
</td>
<td style="text-align: center;">
26,937 (99.7%)
</td>
<td style="text-align: center;">
82 (0.3%)
</td>
<td style="text-align: center;">
27,019 (34.7%)
</td>
<td style="text-align: center;">
</td>
</tr>
<tr>
<td style="border-bottom: 2px solid grey; text-align: left;">
  Obese
</td>
<td style="border-bottom: 2px solid grey; text-align: center;">
19,463 (99.6%)
</td>
<td style="border-bottom: 2px solid grey; text-align: center;">
81 (0.4%)
</td>
<td style="border-bottom: 2px solid grey; text-align: center;">
19,544 (25.1%)
</td>
<td style="border-bottom: 2px solid grey; text-align: center;">
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
1.58
</td>
<td style="text-align:right;">
1.05
</td>
<td style="text-align:right;">
2.39
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
1.62
</td>
<td style="text-align:right;">
0.90
</td>
<td style="text-align:right;">
2.94
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
6.01
</td>
<td style="text-align:right;">
2.68
</td>
<td style="text-align:right;">
13.44
</td>
</tr>
</tbody>
</table>

-   similarly, the estimated ORs associated with vegetarians and
    pesco-vegetarians were calculated for those who use VD supplement
    and those who do not.
    -   Note that pesco-vegetarians have 42% lower odds of SLE compared
        to non-vegetarians if not taking VD supplement, but have more
        than twice of odds of SLE if taking VD supplement (although
        non-significant)

<table>
<thead>
<tr>
<th style="text-align:left;">
contrast
</th>
<th style="text-align:left;">
take_vd
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
Vegetarians / (Non-veg)
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
0.53
</td>
<td style="text-align:right;">
1.20
</td>
</tr>
<tr>
<td style="text-align:left;">
Pesco / (Non-veg)
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:right;">
0.58
</td>
<td style="text-align:right;">
0.28
</td>
<td style="text-align:right;">
1.19
</td>
</tr>
<tr>
<td style="text-align:left;">
Vegetarians / (Non-veg)
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
0.82
</td>
<td style="text-align:right;">
0.38
</td>
<td style="text-align:right;">
1.79
</td>
</tr>
<tr>
<td style="text-align:left;">
Pesco / (Non-veg)
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:right;">
2.20
</td>
<td style="text-align:right;">
0.98
</td>
<td style="text-align:right;">
4.98
</td>
</tr>
</tbody>
</table>
