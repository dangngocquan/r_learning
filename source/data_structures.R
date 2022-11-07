# 1. vector
vector1 <- c(1, 2, 3, 4, 5)
vector1[3]
vector1[-3]
vector1[c(1, 3, 5)]
vector1[c(TRUE, TRUE, FALSE, TRUE, TRUE)]
vector1[c(TRUE, FALSE, TRUE)]

# 2. list
list1 <- list(
  a = c(1, 2, 3),
  b = c("Apple", "Orange"),
  c = c(TRUE, FALSE)
)
list1$a
list1[[2]]

# 3. factor
factor1 <- factor(c("A", "A", "B", "A"))
factor1[3]

# 4. matrix
matrix1 <- matrix(data = 1:12,
                  nrow = 3)
matrix1[1, 2]
matrix1[1,]
matrix1[,2]
matrix1[c(1, 3), c(1, 4)]

# 5. data.frame
data1 <- data.frame(Column1 = c(1, 2, 3),
                    Column2 = c(4, 5, 6),
                    row.names = c("Row1", "Row2", "Row3"))
data1[1, 2]
data1[2,]
data1[,2]
data1[2:3, 1:2]
