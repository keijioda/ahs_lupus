
# AHS-2 lupus study

# Required packages
pacs <- c("tidyverse", "tableone")
sapply(pacs, require, character.only = TRUE)

# Read data: n = 93,467 and 111 variables
filepath <- "./data/lupus-initial-dataset-v1-2022-04-25.csv"
lupus0  <- read_csv(filepath)
dim(lupus0)
names(lupus0)

# Include non-Hispanic White or Black
# Exclude age < 30, missing gender, diet pattern, education, smoking
# Exclude extreme kcal
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
    vegstat = factor(vege_group_gen_bl, levels = c("vegan", "lacto", "pesco", "semi", "nonveg")),
    prev_sle = ifelse((!is.na(sley) & sley > 0) | (!is.na(sle) & sle == 2), 1, 0),
    prev_sle = factor(prev_sle, labels = c("No", "Yes"))) %>% 
  drop_na(sex, age, black, vege_group_gen_bl, smkever, educat3) %>% 
  filter(kcal >= 500 & kcal <= 4500)

# Yields n = 79,779 and n.cases = 481
dim(lupus)
lupus %>% count(prev_sle) %>% mutate(pct = n / sum(n) * 100)
lupus %>% count(agecat)

# Descriptive table
table_vars <- c("age", "agecat", "black", "sex", "smkever", "educat3", "vegstat")
lupus %>% CreateTableOne(table_vars, strata = "prev_sle", data = .) %>%
  print(showAllLevels = TRUE)
