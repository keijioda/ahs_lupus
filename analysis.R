
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
    bmicat  = cut(bmi, breaks = c(0, 25, 30, Inf), right = FALSE),
    bmicat  = factor(bmicat, labels = c("Normal", "Overweight", "Obese")),
    vegstat = factor(vege_group_gen_bl, levels = c("vegan", "lacto", "pesco", "semi", "nonveg")),
    vegstat3 = vegstat,
    # prev_sle = ifelse((!is.na(sley) & sley > 0) | (!is.na(sle) & sle == 2), 1, 0),
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
table_vars <- c("age", "agecat", "black", "sex", "smkever", "educat3", "vegstat3", "take_vd", "bmi", "bmicat")
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
lupus_md <- lupus
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
m3 <- update(m1, . ~ . + vegstat3 + take_vd)
m4 <- update(m1, . ~ . + vegstat3 + take_vd + smkever + educat3)
m5 <- update(m1, . ~ . + vegstat3 + take_vd + smkever + educat3 + bmicat)

models <- list(m1, m2, m3, m4, m5)
ci <- list(exp(confint.default(m1)), 
           exp(confint.default(m2)), 
           exp(confint.default(m3)), 
           exp(confint.default(m4)), 
           exp(confint.default(m5)))
var_labels <- c("Age.: 30-39", 
                "Age.: 40-59", 
                "Race: Black", 
                "Sex.: Male", 
                "Diet: Vegetarians", 
                "Diet: Pesco veg", 
                "VitD: Use VD supp", 
                "Smkg: Ever", 
                "Educ: HS or less", 
                "Educ: Some college", 
                "BMI.: Overweight", 
                "BMI.: Obese")
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

# Interaction b/w dietary pattern and vd supp use
m6 <- update(m1, . ~ . + vegstat3 * take_vd + smkever + educat3 + bmicat)
summary(m6)
anova(m5, m6, test = "LRT")[2, 5]

emmeans(m6, ~ take_vd | vegstat3, type = "response") %>% 
  pairs(reverse = TRUE) %>% 
  confint() %>% 
  as_tibble() %>% 
  select(-(4:5))

emmeans(m6, ~ vegstat3 | take_vd, type = "response") %>% 
  pairs(reverse = TRUE) %>% 
  confint()

calc_or <- function(model, L){
  betas <- coef(model)
  LB <- as.vector(L %*% betas)
  OR <- exp(LB)
  SE <- as.vector(sqrt(t(L) %*% vcov(model) %*% L))
  CI <- exp(LB + qnorm(c(0.025, 0.975)) * SE)
  c(OR = OR, lwr = CI[1], upr = CI[2])
}

# OR associated with VD supp use in vegetarians
L <- rep(0, m6$rank)
L[c(8, 14)] <- 1
vege <- calc_or(m6, L)

# OR associated with VD supp use in pesco
L <- rep(0, m6$rank)
L[c(8, 15)] <- 1
pesco <- calc_or(m6, L)

# OR associated with VD supp use in non-vegetarians (ref)
L <- rep(0, m6$rank)
L[8] <- 1
nonveg <- calc_or(m6, L)

# OR for vd supp use by dietary pattern
round(rbind(vege, pesco, nonveg), 2)

# OR associated with vegetarians among those who use VD supp
L <- rep(0, m6$rank)
L[c(6, 14)] <- 1
vege <- calc_or(m6, L)

# OR associated with pesco among those who use VD supp
L <- rep(0, m6$rank)
L[c(7, 15)] <- 1
pesco <- calc_or(m6, L)
