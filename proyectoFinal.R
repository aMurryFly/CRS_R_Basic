
#hhrr <- read.csv("HR_comma_sep.csv", header = T)
library(dplyr) #Data Manipulation
library(lattice) #Plots
library(ggplot2) #Plots

#EDA -> Anális exploratorio de datos

#Visualizar datos
HR_comma_sep[!complete.cases(HR_comma_sep) ,]
str(HR_comma_sep)
summary(HR_comma_sep)

ggplot(HR_comma_sep, aes(satisfaction_level))+
  geom_histogram(fill="aquamarine3", binwidth = 0.01)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  labs(title = "1. Distribución de nivel de satisfacción")

ggplot(HR_comma_sep, aes(satisfaction_level))+
  geom_histogram(aes(fill=salary), binwidth = 0.01)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  scale_fill_manual(
    name="Salario",
    values=c('lightpink1', 'lightblue1', 'olivedrab4'),
    labels=c("Alto","Medio","Bajo")
  )+
  labs(title = "2. Distribución de nivel de satisfacción")


#Vamos a verificar si tenemos o si existe diferencias 
#en la distribución del nivel de satisfacción mediante los salarios

ggplot(HR_comma_sep, aes(satisfaction_level, 
                         fill= factor(salary)))+
  geom_density(alpha=.3)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  scale_fill_manual(
    name="Salario",
    values=c('lightpink1', 'lightblue1', 'olivedrab4'),
    labels=c("Alto","Medio","Bajo")
  )+
  labs(title = "3. Distribución de nivel de satisfacción")

########válidar hipótesis

HR_comma_sep %>% group_by(salary) %>% summarise(
  media =mean(satisfaction_level))


HR_comma_sep$salary <- factor(HR_comma_sep$salary,
                              levels = c("high","medium","low"))
ggplot(HR_comma_sep, aes(x=salary
                         , y= satisfaction_level))+
  geom_boxplot(aes(fill=salary))+
  xlab("Salario")+
  ylab("Nivel de satisfacción")+
  scale_fill_manual(
    name="Salario",
    values=c('lightpink1', 'lightblue1', 'olivedrab4'),
    labels=c("Alto","Medio","Bajo")
  )+
  labs(title = "4. Nivel de satisfacción respecto al salario")

#####Validar la satisfacción al abandonar la empresa
class(HR_comma_sep$left)

ggplot(HR_comma_sep, aes(satisfaction_level, 
                         fill= factor(left)))+
  geom_density(alpha=.3)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  scale_fill_manual(
    name="Abandono",
    values=c('lightpink1', 'lightblue1'),
    labels=c("No","Sí")
  )+
  labs(title = "5. Distribución de nivel de satisfacción")

ggplot(HR_comma_sep, aes(satisfaction_level, 
                         fill= factor(Work_accident)))+
  geom_density(alpha=.3)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  scale_fill_manual(
    name="Accidentes de trabajo",
    values=c('lightpink1', 'lightblue1'),
    labels=c("No","Sí")
  )+
  labs(title = "6. Nivel de satisfacción por accidente de trabajo")

ggplot(HR_comma_sep, aes(satisfaction_level, 
                         fill= factor(promotion_last_5years)))+
  geom_density(alpha=.3)+
  xlab("Nivel de satisfacción")+
  ylab("")+
  coord_flip()+
  scale_fill_manual(
    name="Promoción en 5 años",
    values=c('lightpink1', 'lightblue1'),
    labels=c("No","Sí")
  )+
  labs(title = "7. Nivel de satisfacción por promoción")

ggplot(HR_comma_sep, aes(number_project, 
                         satisfaction_level))+
  geom_line(aes(colour=number_project))+
  ylab('Nivel de Satisfacción') +
  xlab('Número de proyectos') +
  labs(title = 'Gráfico 8: Nivel de Satisfacción por Número de Proyectos') +
  theme(legend.position = 'none')

ggplot(HR_comma_sep, aes(factor(number_project),
                         average_montly_hours, 
                         colour=number_project
                         ))+
  geom_boxplot()+
  ylab("Promedio de Horas")+
  xlab("Número de proyecto")+
  labs(title = 'Gráfico 9: Número de Proyectos por Promedio 
       de Horas al mes',
       color = 'Número de Proyectos',
       size = '')
  
  
    
  



























