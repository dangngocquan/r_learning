# 1. Read/Import/Create data
column01 <- c(12, 13, 11, 18, 19, 20)
column01
column02 <- rep(c(1, 2), times = c(2, 4))
column02

data_test <- data.frame(Column1 = column01,
                        Column2 = column02)
data_test

data_test01 <- read.csv("D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test01.csv",
                        header = TRUE)
data_test01

install.packages("readxl")
library(readxl)
data_test02 <- read_excel("D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test02.xlsx")
data_test02


# 2. Write data
write.csv(data_test01, "D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test01_copy.csv")

install.packages("writexl")
library(writexl)
write_xlsx(data_test02, "D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test02_copy.xlsx")


# 3. Data processing
data <- data.frame(Name = c("Alpha", "Beta", "Gamma", "Delta"),
                   Gender = c(1, 0, 0, 0),
                   Grade = c(3, 4, 7, 8.5))
data
data$Gender

data$Gender02 <- factor(data$Gender, levels = c(0, 1),
                        labels = c("Female", 'Male'))
data
data$Gender02

data$`Alpha grade` <- cut(data$Grade,
                          breaks = c(-Inf, 4, 5.5, 7, 8.5, Inf),
                          labels = c("F", "D", "C", "B", "A"),
                          right = FALSE)
data

data$`Sample value` <- sample(seq(1, 5, 0.5), 
                              size = 4, 
                              replace = TRUE)
data

data_subset01 <- subset(data, data$Grade > 3 & data$Gender02 != 'Male')
data_subset01

data_subset01 <- data[data$Grade > 3 & data$Gender02 != 'Male',]
data_subset01


table01 <- data.frame(col1 = sample(1:3, size = 5, replace = TRUE),
                      col2 = sample(1:3, size = 5, replace = TRUE),
                      col3 = sample(1:3, size = 5, replace = TRUE))
table02 <- data.frame(col1 = sample(1:3, size = 5, replace = TRUE),
                      col2 = sample(1:3, size = 5, replace = TRUE),
                      col3 = sample(1:3, size = 5, replace = TRUE))

table03 <- merge(table01, table02, by.x = 'col1', by.y = 'col1', sort = FALSE)
table03

data_test03 <- data.frame(col1 = c(1, 2, NA, 4, 5, 6),
                         col2 = c(1, NA, 3, NA, 5, 6),
                         col3 = c(1, 2, 3, 4, NA, 6))
data_test03

colSums(is.na(data_test03))

data_test04 <- na.omit(data_test03)
data_test04

data_test03$col1[is.na(data_test03$col1)]
data_test03$col1[is.na(data_test03$col1)] <- mean(data_test03$col1, na.rm = TRUE)
data_test03$col2[is.na(data_test03$col2)] <- mean(data_test03$col2, na.rm = TRUE)
data_test03$col3[is.na(data_test03$col3)] <- mean(data_test03$col3, na.rm = TRUE)
data_test03
