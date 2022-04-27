
# AHS-2 lupus study

# Required packages
pacs <- c("tidyverse", "tableone")
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

# Include non-Hispanic White or Black
# Exclude age < 30
# Exclude missing gender, diet pattern, education, smoking
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
table_vars <- c("age", "agecat", "black", "sex", "smkever", "educat3", "vegstat3", "bmi", "bmicat")
lupus %>% CreateTableOne(table_vars, strata = "prev_sle", data = .) %>%
  print(showAllLevels = TRUE)

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
base1 <- glm(fm, data = lupus_md, family = "binomial")
base2 <- update(base1, . ~ . + vegstat3)
final1 <- update(base1, . ~ . + vegstat3 + smkever + educat3)
final2 <- update(base1, . ~ . + vegstat3 + smkever + educat3 + bmicat)

models <- list(base1, base2, final1, final2)
ci <- list(exp(confint.default(base1)), exp(confint.default(base2)), exp(confint.default(final1)), exp(confint.default(final2)))
var_labels <- c("Age.: 30-39", 
                "Age.: 40-59", 
                "Race: Black", 
                "Sex.: Male", 
                "Diet: Vegetarians", 
                "Diet: Pesco veg", 
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
                     column.labels = c("Model 1", "Model 2", "Model 3", "Model 4"),
                     covariate.labels = var_labels,
                     apply.coef = exp, 
                     ci.custom = ci, 
                     single.row = TRUE, 
                     star.cutoffs = NA, 
                     omit = "Constant", 
                     omit.stat = c("aic", "ll"),
                     omit.table.layout = "n")
