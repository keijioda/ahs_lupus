
# AHS-2 lupus study

# Required packages
pacs <- c("tidyverse", "tableone", "emmeans")
sapply(pacs, require, character.only = TRUE)

# Function to search variables
search_var <- function(df, pattern, ...) {
  loc <- grep(pattern, names(df), ...)
  if (length(loc) == 0) warning("There are no such variables")
  else return(data.frame(loc = loc, varname = names(df)[loc]))
}

# Read data: n = 93,467 and 111 variables
filepath <- "./data/lupus-initial-dataset-v1-2022-04-25.csv"
lupus0  <- read_csv(filepath)
dim(lupus0)
names(lupus0)
n_distinct(lupus0$analysisid)

# Include non-Hispanic White or Black
# Exclude age < 30
# Exclude missing gender, diet pattern, education, smoking and BMI
# Exclude extreme kcal <500 or >4500
lupus <- lupus0 %>%
  mutate(
    age = ifelse(age < 30, NA, age),
    agecat = cut(age, breaks = c(0, 40, 60, Inf), right = FALSE),
    agecat = factor(agecat, labels = c("30-39", "40-59", ">=60")),
    sex = factor(sex, labels = c("Female", "Male")),
    black = case_when(
      ethyou == "01" ~ 0,
      ethyou %in% c("02", "03", "04", "05", "39", "40", "63", "74", "77", "96") ~ 1),
    black = factor(black, labels = c("White", "Black")),
    smkever = ifelse(smoke > 1 | (!is.na(smokenow) & smokenow == 1), 1, 0),
    smkever = factor(smkever, labels = c("Never", "Ever")),
    educat3 = cut(educyou, breaks = c(0, 3, 6, 9)),
    educat3 = factor(educat3, labels = c("HS or less", "Some college", "Col grad")),
    take_vd = ifelse(!is.na(vitd) & vitd == 2, 1, 0),
    take_vd = factor(take_vd, labels = c("No", "Yes")),
    take_fo = ifelse(!is.na(fishoil) & fishoil == 2, 1, 0),
    take_fo = factor(take_fo, labels = c("No", "Yes")),
    bmicat  = cut(bmi, breaks = c(0, 25, 30, Inf), right = FALSE),
    bmicat  = factor(bmicat, labels = c("Normal", "Overweight", "Obese")),
    vegstat = factor(vege_group_gen_bl, levels = c("vegan", "lacto", "pesco", "semi", "nonveg")),
    vegstat3 = vegstat,
    prev_sle = ifelse(!is.na(sle) & sle == 2, 1, 0),
    prev_sle = factor(prev_sle, labels = c("No", "Yes"))) %>% 
  drop_na(sex, age, black, vege_group_gen_bl, smkever, educat3, bmi) %>% 
  filter(kcal >= 500 & kcal <= 4500)

levels(lupus$vegstat) <- c("Vegans", "Lacto-ovo", "Pesco", "Semi", "Non-veg")
levels(lupus$vegstat3) <- c("Vegetarians", "Vegetarians", "Pesco", "Non-veg", "Non-veg")

# Yields n = 77,795 and n.cases = 237
dim(lupus)
lupus %>% count(prev_sle) %>% mutate(pct = n / sum(n) * 100)

# Descriptive table
table_vars <- c("age", "agecat", "black", "sex", "smkever", "educat3", "vegstat3", "take_vd", "take_fo", "bmi", "bmicat")
lupus %>% CreateTableOne(table_vars, strata = "prev_sle", data = .) %>%
  print(showAllLevels = TRUE)

# Using Gmisc package
library(Gmisc)

getTable1Stats <- function(x, digits = 1, statistics = getPvalChiSq, ...){
  getDescriptionStatsBy(x = lupus[[x]], 
                        by = lupus$prev_sle,
                        digits = digits,
                        header_count = "n = %s",
                        add_total_col = "last",
                        statistics = statistics,
                        hrzl_prop = TRUE, 
                        ...)
}

t1 <- list()
t1[["Age (year)"]]        <- getTable1Stats("age", statistics = getPvalAnova)
t1[["Age group"]]         <- getTable1Stats("agecat")
t1[["Race"]]              <- getTable1Stats("black")
t1[["Gender"]]            <- getTable1Stats("sex")
t1[["Smoking"]]           <- getTable1Stats("smkever")
t1[["Education"]]         <- getTable1Stats("educat3")
t1[["Dietary pattern"]]   <- getTable1Stats("vegstat3")
t1[["Use of vit D supp"]] <- getTable1Stats("take_vd")
t1[["BMI (kg/m&sup2)"]]   <- getTable1Stats("bmi", statistics = getPvalAnova)
t1[["BMI category"]]      <- getTable1Stats("bmicat")

mergeDesc(t1,
          htmlTable_args = list(css.rgroup = "",
                                caption  = "Table 1: Participant characteristics")
)

# Logistic regression

# Change references
lupus_md <- lupus %>% 
  mutate(kcal100 = kcal / 100)
lupus_md$vegstat3 <- relevel(lupus_md$vegstat3, ref = "Non-veg")
lupus_md$educat3 <- relevel(lupus_md$educat3, ref = "Col grad")
lupus_md$agecat <- relevel(lupus_md$agecat, ref = ">=60")

# Function to display OR with 95% Wald CI
or_out <- function(glm){
  orci <- confint.default(glm)
  out <- data.frame(OR = exp(coef(glm)), lwr = exp(orci)[, 1], upr = exp(orci)[, 2])
  rownames(out) <- rownames(orci)
  out %>% slice(-1)
}

RHS <- c("agecat", "black", "sex")
fm <- formula(paste("prev_sle ~", paste0(RHS, collapse = " + ")))
m1 <- glm(fm, data = lupus_md, family = "binomial")
m2 <- update(m1, . ~ . + vegstat3)
m3 <- update(m1, . ~ . + vegstat3 + educat3)
m4 <- update(m1, . ~ . + vegstat3 + educat3 + smkever)
m5 <- update(m1, . ~ . + vegstat3 + educat3 + smkever + bmicat)
m6 <- update(m1, . ~ . + vegstat3 + educat3 + smkever + bmicat + kcal100)

models <- list(m1, m2, m3, m4, m5, m6)
ci <- list(exp(confint.default(m1)), 
           exp(confint.default(m2)), 
           exp(confint.default(m3)), 
           exp(confint.default(m4)), 
           exp(confint.default(m5)), 
           exp(confint.default(m6)))
var_labels <- c("Age.: 30-39", 
                "Age.: 40-59", 
                "Race: Black", 
                "Sex.: Male", 
                "Diet: Vegetarians", 
                "Diet: Pesco veg", 
                "Educ: HS or less",
                "Educ: Some college",
                "Smkg: Ever", 
                "BMI.: Overweight",
                "BMI.: Obese",
                "Kcal / 100")
stargazer::stargazer(models, 
                     type = "text", 
                     digits = 2,
                     dep.var.caption = "",
                     dep.var.labels = "Outcome: Prevalent SLE",
                     model.numbers = FALSE,
                     column.labels = c("Model 1", "Model 2", "Model 3", "Model 4", "Model 5", "Model 6"),
                     covariate.labels = var_labels,
                     apply.coef = exp, 
                     ci.custom = ci, 
                     star.cutoffs = NA, 
                     omit = "Constant", 
                     omit.stat = c("aic", "ll"),
                     omit.table.layout = "n")

# Trend p-values
getLastPval <- function(x) broom::tidy(x) %>% select(p.value) %>% slice(nrow(.))

Mod1 <- Mod2 <- Mod3 <- Mod4 <- Mod5 <- Mod6 <- list()

# Model 1, age
Mod1["agecat"] <- update(m1, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 2, age
Mod2["agecat"] <- update(m2, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 2, vegstat3
Mod2["vegstat3"] <- update(m2, .~. - vegstat3 + as.numeric(vegstat3), data = lupus) %>% 
  getLastPval()

# Model 3, age
Mod3["agecat"] <- update(m3, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 3, vegstat3
Mod3["vegstat3"] <- update(m3, .~. - vegstat3 + as.numeric(vegstat3), data = lupus) %>% 
  getLastPval()

# Model 3, educat3
Mod3["educat3"] <- update(m3, .~. - educat3 + as.numeric(educat3), data = lupus) %>% 
  getLastPval()

# Model 4, age
Mod4["agecat"] <- update(m4, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 4, vegstat3
Mod4["vegstat3"] <- update(m4, .~. - vegstat3 + as.numeric(vegstat3), data = lupus) %>% 
  getLastPval()

# Model 4, educat3
Mod4["educat3"] <- update(m4, .~. - educat3 + as.numeric(educat3), data = lupus) %>% 
  getLastPval()

# Model 5, age
Mod5["agecat"] <- update(m5, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 5, vegstat3
Mod5["vegstat3"] <- update(m5, .~. - vegstat3 + as.numeric(vegstat3), data = lupus) %>% 
  getLastPval()

# Model 5, educat3
Mod5["educat3"] <- update(m5, .~. - educat3 + as.numeric(educat3), data = lupus) %>% 
  getLastPval()

# Model 5, BMI
Mod5["bmicat"] <- update(m5, .~. - bmicat + as.numeric(bmicat)) %>% 
  getLastPval()

# Model 6, age
Mod6["agecat"] <- update(m6, .~. - agecat + as.numeric(agecat)) %>% 
  getLastPval()

# Model 6, vegstat3
Mod6["vegstat3"] <- lupus %>% 
  mutate(kcal100 = kcal / 100) %>% 
  update(m6, .~. - vegstat3 + as.numeric(vegstat3), data = .) %>% 
  getLastPval()

# Model 6, educat3
Mod6["educat3"] <- lupus %>% 
  mutate(kcal100 = kcal / 100) %>% 
  update(m6, .~. - educat3 + as.numeric(educat3), data = .) %>% 
  getLastPval()

# Model 6, BMI
Mod6["bmicat"] <- update(m6, .~. - bmicat + as.numeric(bmicat)) %>% 
  getLastPval()


all_trend <- list(Mod1, Mod2, Mod3, Mod4, Mod5, Mod6)
names(all_trend) <- paste0("Model", 1:6)
all_trend %>% 
  map(as.data.frame) %>% 
  map(\(x) round(x, 4))

# Year of diagnosis and start of supplements
lupus %>% select(sley) %>% table()
lupus %>% select(vitdy) %>% table()

lupus %>% 
  mutate(sley = ifelse(sley == 0, NA, sley),
         sley = factor(sley, labels = c("<5 yrs", "5-9 yrs", "10-14 yrs", "15-19 yrs", "20+ yrs")),
         vitdy = factor(vitdy, labels = c("0-4 yrs", "0-4 yrs", "5-9 yrs", "10+ yrs"))) %>% 
  select(sley, vitdy) %>% table()

lupus %>% 
  mutate(sley = ifelse(sley == 0, NA, sley),
         sley = factor(sley, labels = c("<5 yrs", "5-9 yrs", "10-14 yrs", "15-19 yrs", "20+ yrs")),
         fishoily = factor(fishoily, labels = c("0-4 yrs", "0-4 yrs", "5-9 yrs", "10+ yrs"))) %>% 
  select(sley, fishoily) %>% table()

# Menopause status
# Check data
lupus %>% select(sex, mtot, ageatmenopause)
lupus %>% filter(mtot == 0) %>% select(sex, mtot, ageatmenopause)
lupus %>% select(mtot) %>% table()

# Number of missing values on mtot: 580
lupus %>%
  filter(sex == "Female" & is.na(mtot)) %>% 
  tally()

# Compare proportions by SLE only among females
lupus %>% 
  filter(!is.na(mtot)) %>% 
  mutate(menopause = factor(mtot, labels = c("Pre-menopause", "Post-menopause"))) %>% 
  CreateTableOne("menopause", strata = "prev_sle", data =.) %>% 
  print(showAllLevels = TRUE)

# Models with menopause variable
lupus_menop <- lupus_md %>% 
  mutate(menopause = ifelse(sex == "Male", 0, mtot),
         menopause = factor(menopause, labels = c("Pre-menopause", "Post-menopause")),
         PM_female = (2 - as.numeric(sex)) * (as.numeric(menopause) - 1),
         sex = fct_relevel(sex, c("Male", "Female"))) %>% 
  filter(!is.na(PM_female))

# Sanity check
lupus_menop %>% select(sex, menopause) %>% table()
lupus_menop %>% select(sex, menopause, PM_female) %>% distinct()

RHS <- c("agecat", "black", "sex")
fm <- formula(paste("prev_sle ~", paste0(RHS, collapse = " + ")))
m1 <- glm(fm, data = lupus_menop, family = "binomial")
m2 <- update(m1, . ~ . + vegstat3)
m3 <- update(m1, . ~ . + vegstat3 + educat3)
m4 <- update(m1, . ~ . + vegstat3 + educat3 + smkever)
m5 <- update(m1, . ~ . + vegstat3 + educat3 + smkever + PM_female)

models <- list(m1, m2, m3, m4, m5)
ci <- list(exp(confint.default(m1)), 
           exp(confint.default(m2)), 
           exp(confint.default(m3)), 
           exp(confint.default(m4)), 
           exp(confint.default(m5)))
var_labels <- c("Age.: 30-39", 
                "Age.: 40-59", 
                "Race: Black", 
                "Sex.: Female", 
                "Diet: Vegetarians", 
                "Diet: Pesco veg", 
                "Educ: HS or less",
                "Educ: Some college",
                "Smkg: Ever", 
                "Mnps: Post-menopause")
stargazer::stargazer(models, 
                     type = "text", 
                     digits = 2,
                     dep.var.caption = "",
                     dep.var.labels = "Outcome: Prevalent SLE",
                     model.numbers = FALSE,
                     column.labels = c("Model 1", "Model 2", "Model 3", "Model 4", "Model 5"),
                     covariate.labels = var_labels,
                     apply.coef = exp, 
                     ci.custom = ci, 
                     star.cutoffs = NA, 
                     omit = "Constant", 
                     omit.stat = c("aic", "ll"),
                     omit.table.layout = "n")

# Comparing participants' characteristics for those with or without missing value on menopausal status
table_vars <- c("age", "agecat", "black", "sex", "smkever", "educat3", "vegstat3", "bmi", "bmicat")
lupus %>% 
  mutate(menopause = ifelse(sex == "Male", 0, mtot),
         menopause = factor(menopause, labels = c("Pre-menopause", "Post-menopause")),
         PM_female = (2 - as.numeric(sex)) * (as.numeric(menopause) - 1),
         menop_miss = ifelse(is.na(menopause), 1, 0),
         menop_miss = factor(menop_miss, labels = c("Not missing", "missing"))) %>% 
  CreateTableOne(table_vars, strata = "menop_miss", data = .) %>% 
  print(showAllLevels = TRUE)

# Interaction b/w dietary pattern and vd supp use
# m6 <- update(m1, . ~ . + vegstat3 * take_vd + smkever + educat3 + bmicat)
# summary(m6)
# anova(m5, m6, test = "LRT")[2, 5]
# 
# emmeans(m6, ~ take_vd | vegstat3, type = "response") %>% 
#   pairs(reverse = TRUE) %>% 
#   confint() %>% 
#   as_tibble() %>% 
#   select(-(4:5))
# 
# emmeans(m6, ~ vegstat3 | take_vd, type = "response") %>% 
#   pairs(reverse = TRUE) %>% 
#   confint()
# 
# calc_or <- function(model, L){
#   betas <- coef(model)
#   LB <- as.vector(L %*% betas)
#   OR <- exp(LB)
#   SE <- as.vector(sqrt(t(L) %*% vcov(model) %*% L))
#   CI <- exp(LB + qnorm(c(0.025, 0.975)) * SE)
#   c(OR = OR, lwr = CI[1], upr = CI[2])
# }
# 
# # OR associated with VD supp use in vegetarians
# L <- rep(0, m6$rank)
# L[c(8, 14)] <- 1
# vege <- calc_or(m6, L)
# 
# # OR associated with VD supp use in pesco
# L <- rep(0, m6$rank)
# L[c(8, 15)] <- 1
# pesco <- calc_or(m6, L)
# 
# # OR associated with VD supp use in non-vegetarians (ref)
# L <- rep(0, m6$rank)
# L[8] <- 1
# nonveg <- calc_or(m6, L)
# 
# # OR for vd supp use by dietary pattern
# round(rbind(vege, pesco, nonveg), 2)
# 
# # OR associated with vegetarians among those who use VD supp
# L <- rep(0, m6$rank)
# L[c(6, 14)] <- 1
# vege <- calc_or(m6, L)
# 
# # OR associated with pesco among those who use VD supp
# L <- rep(0, m6$rank)
# L[c(7, 15)] <- 1
# pesco <- calc_or(m6, L)
