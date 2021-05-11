suppressPackageStartupMessages(expr = library(tidyverse))
suppressPackageStartupMessages(expr = library(haven))
suppressPackageStartupMessages(expr = library(bnlearn))
suppressPackageStartupMessages(expr = library(Rgraphviz))
suppressPackageStartupMessages(expr = library(gRain))
suppressPackageStartupMessages(expr = library(Rmpfr))
suppressPackageStartupMessages(expr = library(readr))
suppressPackageStartupMessages(expr = library(precrec))
suppressPackageStartupMessages(expr = library(ROCR))
suppressPackageStartupMessages(expr = library(epiR))
suppressPackageStartupMessages(expr = library(ROCit))
suppressPackageStartupMessages(expr = library(mice))
suppressPackageStartupMessages(expr = library(xlsx))


# df <- read.xlsx("./Kaggle_Sirio_Libanes_ICU_Prediction.xlsx", 
#                 sheetIndex = 1)
# saveRDS(df, 'Kaggle_Sirio_Libanes_ICU_Prediction.rds')


df <- readRDS('Kaggle_Sirio_Libanes_ICU_Prediction.rds')

df <- df %>% mutate(
  PATIENT_VISIT_IDENTIFIER = as.factor(PATIENT_VISIT_IDENTIFIER),
  AGE_ABOVE65              = as.factor(AGE_ABOVE65),
  AGE_PERCENTIL            = as.factor(AGE_PERCENTIL),
  GENDER                   = as.factor(GENDER),
  DISEASE.GROUPING.1       = as.factor(DISEASE.GROUPING.1),
  DISEASE.GROUPING.2       = as.factor(DISEASE.GROUPING.2),
  DISEASE.GROUPING.3       = as.factor(DISEASE.GROUPING.3),
  DISEASE.GROUPING.4       = as.factor(DISEASE.GROUPING.4),
  DISEASE.GROUPING.5       = as.factor(DISEASE.GROUPING.5),
  DISEASE.GROUPING.6       = as.factor(DISEASE.GROUPING.6),
  HTN                      = as.factor(HTN),
  IMMUNOCOMPROMISED        = as.factor(IMMUNOCOMPROMISED),
  OTHER                    = as.double(OTHER),
  ALBUMIN_DIFF             = as.double(ALBUMIN_DIFF),
  BE_ARTERIAL_DIFF         = as.double(BE_ARTERIAL_DIFF),
  BE_VENOUS_DIFF           = as.double(BE_VENOUS_DIFF),
  BIC_ARTERIAL_DIFF        = as.double(BIC_ARTERIAL_DIFF),
  BIC_VENOUS_DIFF          = as.double(BIC_VENOUS_DIFF),
  BILLIRUBIN_DIFF          = as.double(BILLIRUBIN_DIFF),
  BLAST_DIFF               = as.double(BLAST_DIFF),
  CALCIUM_DIFF             = as.double(CALCIUM_DIFF),
  CREATININ_DIFF           = as.double(CREATININ_DIFF),
  FFA_DIFF                 = as.double(FFA_DIFF),
  GGT_DIFF                 = as.double(GGT_DIFF),
  GLUCOSE_DIFF             = as.double(GLUCOSE_DIFF),
  HEMATOCRITE_DIFF         = as.double(HEMATOCRITE_DIFF),
  HEMOGLOBIN_DIFF          = as.double(HEMOGLOBIN_DIFF),
  INR_DIFF                 = as.double(INR_DIFF),
  LACTATE_DIFF             = as.double(LACTATE_DIFF),
  LEUKOCYTES_DIFF          = as.double(LEUKOCYTES_DIFF),
  LINFOCITOS_DIFF          = as.double(LINFOCITOS_DIFF),
  NEUTROPHILES_DIFF        = as.double(NEUTROPHILES_DIFF),
  P02_ARTERIAL_DIFF        = as.double(P02_ARTERIAL_DIFF),
  P02_VENOUS_DIFF          = as.double(P02_VENOUS_DIFF),
  PC02_ARTERIAL_DIFF       = as.double(PC02_ARTERIAL_DIFF),
  PC02_VENOUS_DIFF         = as.double(PC02_VENOUS_DIFF),
  PCR_DIFF                 = as.double(PCR_DIFF),
  PH_ARTERIAL_DIFF         = as.double(PH_ARTERIAL_DIFF),
  PH_VENOUS_DIFF           = as.double(PH_VENOUS_DIFF),
  PLATELETS_DIFF           = as.double(PLATELETS_DIFF),
  POTASSIUM_DIFF           = as.double(POTASSIUM_DIFF),
  SAT02_ARTERIAL_DIFF      = as.double(SAT02_ARTERIAL_DIFF),
  SAT02_VENOUS_DIFF        = as.double(SAT02_VENOUS_DIFF),
  SODIUM_DIFF              = as.double(SODIUM_DIFF),
  TGO_DIFF                 = as.double(TGO_DIFF),
  TGP_DIFF                 = as.double(TGP_DIFF),
  TTPA_DIFF                = as.double(TTPA_DIFF),
  UREA_DIFF                = as.double(UREA_DIFF),
  DIMER_DIFF               = as.double(DIMER_DIFF),
  WINDOW                   = as.factor(WINDOW),
  ICU                      = as.factor(ICU)
)


sapply(df, function(x) sum(is.na(x)))

