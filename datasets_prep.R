# Logistic Regression Notes
# Prepare the datasets
setwd("/Users/selvaprabhakaran/Documents/work/datasets")
library(mlbench)
library(kernlab)
library(klaR)
library(ISLR)

### BINARY --------------------------------------------
# Breast Cancer
data("BreastCancer") # predict if the cancer is benign or malignant
bc <- BreastCancer
bc$Class <- ifelse(as.character(BreastCancer$Class) == "malignant", 1, 0)
write.csv(bc, "BreastCancer.csv", row.names=F)
saveRDS(bc, "BreastCancer.rds")

# mlbench::Ionosphere
data("Ionosphere")  # predict if the free electors are 'good' radar returns showing some structure in ionosphere or 'bad'
is <- Ionosphere
is$Class <- ifelse(as.character(Ionosphere$Class) == "good", 1, 0)
write.csv(is, "Ionosphere.csv", row.names=F)
saveRDS(is, "Ionosphere.rds")

# mlbench::PimaIndiansDiabetes
data("PimaIndiansDiabetes")  # Predict if diabetic or not
pid <- PimaIndiansDiabetes
pid$diabetes <- ifelse(as.character(pid$diabetes) == "pos", 1, 0)
write.csv(is, "PimaIndiansDiabetes.csv", row.names=F)
saveRDS(is, "PimaIndiansDiabetes.rds")

# mlbench::HouseVotes84
data(HouseVotes84)  # Predict of the congressman is a 'democrat' or 'republican' based on votes cast on 16 social issues.
hv <- HouseVotes84
hv$Class <- ifelse(as.character(hv$Class) == "republican", 1, 0)
write.csv(hv, "HouseVotes84.csv", row.names=F)
saveRDS(hv, "HouseVotes84.rds")

# mlbench::Sonar
data(Sonar)  # predict if detected object is a "Rock" or "Metal" based on energy in particular frequency band.
sr <- Sonar
sr$Class <- ifelse(as.character(sr$Class) == "R", 1, 0)
write.csv(sr, "Sonar.csv", row.names=F)
saveRDS(sr, "Sonar.rds")

# klaR::GermanCredit
data("GermanCredit")  # Predict if applicants have good or bad credit risk based on social and financial metrics.
gc <- GermanCredit
gc$credit_risk <- ifelse(as.character(gc$credit_risk) == "good", 1, 0)
write.csv(gc, "GermanCredit.csv", row.names=F)
saveRDS(gc, "GermanCredit.rds")

# kernlab::spam
data(spam)  # Detect if an email is spam or not based on presence / count of various words/characters.
sp <- spam
sp$type <- ifelse(as.character(sp$type) == "spam", 1, 0)
write.csv(sp, "spam.csv", row.names=F)
saveRDS(sp, "spam.rds")

# kernlab::promotergene
data(promotergene)  # Detect if a region of DNA contains promotergene or not based on the sequence of DNA bases.
pg <- promotergene
pg$Class <- ifelse(as.character(pg$Class) == "+", 1, 0)
write.csv(pg, "promotergene.csv", row.names=F)
saveRDS(pg, "promotergene.rds")

# kernlab::ticdata
data(ticdata)  # insurance data. Determine if a person will buy an insurance policy or not based on socio-economic data.
tic <- ticdata
tic$CARAVAN <- ifelse(as.character(tic$CARAVAN) == "insurance", 1, 0)
write.csv(tic, "ticdata.csv", row.names=F)
saveRDS(tic, "ticdata.rds")

# kernlab::musk
data(musk)  # Predict if a molecule is a musk or not, based on distances from origin.
ms <- musk
ms$Class <- ifelse(as.character(ms$Class) == 1, 1, 0)
write.csv(ms, "musk.csv", row.names=F)
saveRDS(ms, "musk.rds")

### Multiclass datasets --------------------------------------------------
# mlbench::zoo
data("Zoo")  # determine if an animal is one of 7 classes like: mammal, fish, bird etc.
write.csv(Zoo, "Zoo.csv", row.names=F)
saveRDS(Zoo, "Zoo.rds")

# mlbench::Soybean  
data("Soybean")  # Determine thh class of soybean (out of 15 classes) based on crop and growth characteristis.
write.csv(Soybean, "Soybean.csv", row.names=F)
saveRDS(Soybean, "Soybean.rds")

# mlbench::Glass
data("Glass")  # Identify the type of Glass (out of 7 types) based on chemical composition.
write.csv(Glass, "Glass.csv", row.names=F)
saveRDS(Glass, "Glass.rds")

# mlbench::LetterRecognition
data("LetterRecognition")  # Identify the alphabet based on pixel position characteristics
write.csv(LetterRecognition, "LetterRecognition.csv", row.names=F)
saveRDS(LetterRecognition, "LetterRecognition.rds")

# mlbench::Vehicle
data("Vehicle")  # Identify vehicle type (out of 4 types) based on geometric characteristics.
write.csv(Vehicle, "Vehicle.csv", row.names=F)
saveRDS(Vehicle, "Vehicle.rds")

# mlbench::Vowel
data("Vowel")  # Predict vowel based on utteracnce variables.
write.csv(Vowel, "Vowel.csv", row.names=F)
saveRDS(Vowel, "Vowel.rds")

# kernlab::income
data("income")  # Predict annual income bucket of household based on social variables.
write.csv(income, "income.csv", row.names=F)
saveRDS(income, "income.rds")

## Continuous Y datasets:
# mlbench::Servo 
data("Servo")  # Determine the class of Servo system.
write.csv(Servo, "Servo.csv", row.names=F)
saveRDS(Servo, "Servo.rds")

### Continuous Y Variable - Regression -----------------------------

# ISLR::Carseats  
data(Carseats)  # predict unit sales of child carseats based on marketing and demographic metrics.
write.csv(Carseats, "Carseats.csv", row.names=F)
saveRDS(Carseats, "Carseats.rds")

# Multinomial or coninuous regression
# ISLR::Hitters  
data(Hitters)  # predict league of baseball hitters based on basedball performance data.
write.csv(Hitters, "Hitters.csv", row.names=F)
saveRDS(Hitters, "Hitters.rds")

# ISLR::College 
data("College")   # predict number of applications based on academic metrics.
write.csv(College, "College.csv", row.names=F)
saveRDS(College, "College.rds")

# ISLR::Wage  
data("Wage")  # predict wage of workers based on demgraphic variables.
write.csv(Wage, "Wage.csv", row.names=F)
saveRDS(Wage, "Wage.rds")

# mlbench::BostonHousing
data("BostonHousing")  # predict median value of houses at various locations based on demographic variables.
write.csv(BostonHousing, "BostonHousing.csv", row.names=F)
saveRDS(BostonHousing, "BostonHousing.rds")

# MASS::Cars93
data("Cars93")  # Predict the mileage / make based on car's features 
write.csv(Cars93, "Cars93.csv", row.names=F)
saveRDS(Cars93, "Cars93.rds")

# ISLR::Auto
data("Auto")  # similar to Cars93. Predict mileage of cars based on various features.
write.csv(Auto, "Auto.csv", row.names=F)
saveRDS(Auto, "Auto.rds")

## ISLR::Khan
data(Khan)  # Predict type of tumour based on gene expression
# write.csv(Khan, "Khan.csv", row.names=F)
saveRDS(Khan, "Khan.rds")

## Time series
# ISLR::Smarket  # predict weekly stock market returns
data(Smarket)
write.csv(Smarket, "Smarket.csv", row.names=F)
saveRDS(Smarket, "Smarket.rds")

# ISLR::Weekly  # predict weekly stock market returns
data("Weekly")
write.csv(Weekly, "Weekly.csv", row.names=F)
saveRDS(Weekly, "Weekly.rds")


