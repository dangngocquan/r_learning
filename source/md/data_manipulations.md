# **Data manipulations**

## **1. Read/ Import/ Create data**
***Code & Result***
```
column01 <- c(12, 13, 11, 18, 19, 20)
```

```console
[1] 12 13 11 18 19 20
```

***Code & Result***
```
column02 <- rep(c(1, 2), times = c(2, 4))
```

```console
[1] 1 1 2 2 2 2
```

***Code & Result***
```
data_test <- data.frame(Column1 = column01,
                        Column2 = column02)
```

```console
  Column1 Column2
1      12       1
2      13       1
3      11       2
4      18       2
5      19       2
6      20       2
```

***Code & Result***
```
data_test01 <- read.csv("D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test01.csv",
                        header = TRUE)
```

```console
  Column.01 Column.02
1         1         1
2         2         3
3         3         6
4         4         5
5         5         3
```

***Code & Result***
```
library(readxl)
data_test02 <- read_excel("D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test02.xlsx")
```

```console
# A tibble: 5 × 2
  `Column 01` `Column 02`
        <dbl>       <dbl>
1           1           1
2           2           4
3           3           2
4           4           3
5           5           5
```

## **2. Write data**

***Code***
```
write.csv(data_test01, "D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test01_copy.csv")
```



***Code***
```
library(writexl)
write_xlsx(data_test02, "D:\\Study\\R\\r_learning\\source\\file\\data_manipulations\\test02_copy.xlsx")
```

## **3. Data processing**

| Function | Description |
| -------- | ----------- |
| `as.factor()` | Convert to factor |
| `as.character()` | Convert to character vector |
| `as.numeric()` | Convert to numeric vector |
| `factor()` | |
| `cut()` | |
| ` sample()` | | 
| `subset()` | |
| `merge()` | |
| `colSums()` | |
| `is.na()` | |
| `na.omit()` | | 
 
***Create sample data***

***Code & Result***
```
data <- data.frame(Name = c("Alpha", "Beta", "Gamma", "Delta"),
                   Gender = c(1, 0, 0, 0),
                   Grade = c(3, 4, 8.5, 10))
```

```console
> data
   Name Gender Grade
1 Alpha      1   3.0
2  Beta      0   4.0
3 Gamma      0   7.0
4 Delta      0   8.5
```

***Use `factor()` function***

***Code & Result***
```
data$Gender02 <- factor(data$Gender, levels = c(0, 1),
                        labels = c("Female", 'Male'))
```

```console
> data
   Name Gender Grade Gender02
1 Alpha      1   3.0     Male
2  Beta      0   4.0   Female
3 Gamma      0   7.0   Female
4 Delta      0   8.5   Female
```

***Use `cut()` function***

***Code & Result***
```
data$`Alpha grade` <- cut(data$Grade,
                          breaks = c(-Inf, 4, 5.5, 7, 8.5, Inf),
                          labels = c("F", "D", "C", "B", "A"),
                          right = FALSE)
```

```console
> data
   Name Gender Grade Gender02 Alpha grade
1 Alpha      1   3.0     Male           F
2  Beta      0   4.0   Female           D
3 Gamma      0   7.0   Female           B
4 Delta      0   8.5   Female           A
```

***Use `sample()` function***

***Code & Result***
```
data$`Sample value` <- sample(seq(1, 5, 0.5), 
                              size = 4, 
                              replace = TRUE)
```

```console
> data
   Name Gender Grade Gender02 Alpha grade Sample value
1 Alpha      1   3.0     Male           F            1
2  Beta      0   4.0   Female           D            2
3 Gamma      0   7.0   Female           B            5
4 Delta      0   8.5   Female           A            3
```

***Use `subset()` function***

***Code & Result***
```
data_subset01 <- subset(data, data$Grade > 3 & data$Gender02 != 'Male')
```

```console
> data_subset01
   Name Gender Grade Gender02 Alpha grade Sample value
2  Beta      0   4.0   Female           D            2
3 Gamma      0   7.0   Female           B            5
4 Delta      0   8.5   Female           A            3
```
***Or***
```
data_subset01 <- data[data$Grade > 3 & data$Gender02 != 'Male',]
```

```console
> data_subset01
   Name Gender Grade Gender02 Alpha grade Sample value
2  Beta      0   4.0   Female           D            2
3 Gamma      0   7.0   Female           B            5
4 Delta      0   8.5   Female           A            3
```

***Use `merge()` function***


***Create sample data***

```
table01 <- data.frame(col1 = sample(1:3, size = 5, replace = TRUE),
                      col2 = sample(1:3, size = 5, replace = TRUE),
                      col3 = sample(1:3, size = 5, replace = TRUE))
table02 <- data.frame(col1 = sample(1:3, size = 5, replace = TRUE),
                      col2 = sample(1:3, size = 5, replace = TRUE),
                      col3 = sample(1:3, size = 5, replace = TRUE))
```

```console
> table01
  col1 col2 col3
1    3    2    2
2    1    3    2
3    2    3    1
4    3    2    2
5    3    3    2
> table02
  col1 col2 col3
1    1    3    3
2    3    3    1
3    1    3    3
4    2    3    2
5    2    1    2
```


***Code & Result***
```
table03 <- merge(table01, table02, by.x = 'col1', by.y = 'col1', sort = FALSE)
```

```console
> table03
  col1 col2.x col3.x col2.y col3.y
1    3      2      2      3      1
2    3      2      2      3      1
3    3      3      2      3      1
4    1      3      2      3      3
5    1      3      2      3      3
6    2      3      1      3      2
7    2      3      1      1      2
```

***Use `colSums()` & `is.na()` & `na.omit()` function***


***Create sample data***

```
data_test03 <- data.frame(col1 = c(1, 2, NA, 4, 5, 6),
                         col2 = c(1, NA, 3, NA, 5, 6),
                         col3 = c(1, 2, 3, 4, NA, 6))
```

```console
> data_test03
  col1 col2 col3
1    1    1    1
2    2   NA    2
3   NA    3    3
4    4   NA    4
5    5    5   NA
6    6    6    6
```

***Code & Result***
```
colSums(is.na(data_test03))
```

```console
col1 col2 col3 
   1    2    1
```

***Code & Result***
```
data_test04 <- na.omit(data_test03)
```

```console
> data_test04
  col1 col2 col3
1    1    1    1
6    6    6    6
```

***Replace missing data by mean value, median value, ...***

***Code & Result***
```
data_test03$col1[is.na(data_test03$col1)] <- mean(data_test03$col1, na.rm = TRUE)
data_test03$col2[is.na(data_test03$col2)] <- mean(data_test03$col2, na.rm = TRUE)
data_test03$col3[is.na(data_test03$col3)] <- mean(data_test03$col3, na.rm = TRUE)
```

```console
> data_test03
  col1 col2 col3
1  1.0 1.00  1.0
2  2.0 3.75  2.0
3  3.6 3.00  3.0
4  4.0 3.75  4.0
5  5.0 5.00  3.2
6  6.0 6.00  6.0
```