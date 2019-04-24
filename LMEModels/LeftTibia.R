library(readr)
library(magrittr)
library(dplyr)
library(janitor)
library(scales)
library(tidyr)
library(nlme)
library(lme4)
library(lmerTest)
#### MEDIAL_ACCLERATION_LEFT_TIBIA #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/MEDIAL_ACCLERATION_LEFT_TIBIA.csv")
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))

aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)

#### VERTICAL_ACCLERATION_LEFT_TIBIA #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/VERTICAL_ACCLERATION_LEFT_TIBIA.csv")
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)


#### BRAKING_ACCLERATION_LEFT_TIBIA #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/BRAKING_ACCLERATION_LEFT_TIBIA.csv")
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)

#### LATERAL_ACCLERATION_LEFT_TIBIA #### 


