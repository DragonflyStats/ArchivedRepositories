library(readr)
library(magrittr)
library(dplyr)
library(janitor)
library(scales)
library(tidyr)
library(nlme)
library(lme4)
library(lmerTest)
#### MEDIAL_JERK_RIGHT_THORACIC #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/MEDIAL_JERK_RIGHT_THORACIC.csv")
Data <- Data %>% rename("TREATMENT" = Treatment)
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
Data <- Data %>% mutate(Phase2 = ceiling(Step/12))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase2 + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)

#### MEDIAL_JERK_LEFT_THORACIC #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/MEDIAL_JERK_LEFT_THORACIC.csv")
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% rename("TREATMENT" = Treatment)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)


#### BRAKING_JERK_THORACIC #### 
Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/BRAKING_JERK_THORACIC.csv")
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% rename("TREATMENT" = Treatment)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)

#### VERTICAL_JERK_THORACIC #### 

Data <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/CSV/VERTICAL_JERK_THORACIC.csv")
Data <- Data %>% rename("TREATMENT" = Treatment)
Data <- Data %>% gather("item","y",P1:P15)
Data <- Data %>% mutate(TREATMENT = factor(TREATMENT,levels=c("PRE","POST")) )
Data <- Data %>% mutate(Phase = ceiling(Step/5))
aov(y ~ TREATMENT * Phase, data = Data) %>% summary()

Test <- lmer(y ~ TREATMENT * Phase + (1|item),data=Data) 
anova(Test)
Test <- lmer(y ~ TREATMENT * Step + (1|item),data=Data) 
anova(Test)
