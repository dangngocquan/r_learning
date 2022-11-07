# 1. Math functions 
abs(-5)
sqrt(9)
sin(0)
cos(0)
tan(0)
log(exp(2))
log10(100)
exp(1)
round(1.5)
round(2.5)
round(3.1)
round(3.5)

# 2. Matrix calculate functions
A <- matrix(data = 1:2,
            nrow = 1)

B <- matrix(data = 3:8,
            nrow = 2)

C <- matrix(data = 1:4,
            nrow = 2)

A %*% B
t(B)
det(C)
solve(C)


# 3. Statistical calculate functions

# 4. Distribution functions

# 5. Other functions
sum(1, 2, 3)
sum(1:10)
prod(1, 4, 5)
length(c(1, 2, 3, 5))
sort(c(1, 5, 4, 2))
sort(c(1, 5, 4, 2),
     decreasing = TRUE)
seq(from = 1, to = 5)
seq(from = 1, to = 5, by = 0.5)
seq(from = 1, to = 5, length.out = 6)
rep(1:3, times = 2)
rep(1:3, times = c(1, 2, 3))
rep(1:3, each = 2)
