# **Functions** 

## **1. Math functions**

| Function | Example | Result |
| -------- | ------- | ------ |
| `abs()` | `ans(-5)` | `[1] 5` |
| `sqrt()` | `sqrt(9)` | `[1] 3` |
| `sin()` | `sin(0)` | `[1] 0` |
| `cos()` | `cos(0)` | `[1] 1` |
| `tan()` | `tan(0)` | `[1] 0` |
| `log()` | `log(exp(2))` | `[1] 2` |
| `log10()` | `log10(100)` | `[1] 2` |
| `exp()` | `exp(1)` | `[1] 2.718282` |
| `round()` | `round(1.5)` | `[1] 2` |

<br>

## **2. Matrix calculate functions**

| Function | Description |
| -------- | ----------- |
| `%*%` | Multiplicatation of matrix |
| `t()` | Matrix transposition |
| `det()` | Determinant of matrix |
| `solve()` | Inverse matrix |


### **Create two matrices**

***Code***
```
A <- matrix(data = 1:2,
            nrow = 1)

B <- matrix(data = 3:8,
            nrow = 2)

C <- matrix(data = 1:4,
            nrow = 2)
```

***Result***
```
> A
     [,1] [,2]
[1,]    1    2

> B
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8

> C
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```

### **Example for `%*%` function**

***Code***
```
A %*% B
```

***Result***
```
     [,1] [,2] [,3]
[1,]   11   17   23
```

### **Example for `t()` function**

***Code***
```
t(B)
```

***Result***
```
     [,1] [,2]
[1,]    3    4
[2,]    5    6
[3,]    7    8
```

### **Example for `det()` function**

***Code***
```
det(C)
```

***Result***
```
[1] -2
```

### **Example for `solve()` function**

***Code***
```
solve(C)
```

***Result***
```
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
```

<br>

## **3. Statistical calculate functions**

| Function | Description |
| -------- | ----------- |
| `mean()` | The mean value |
| `median()` | The median value |
| `var()` | The variance value |
| `sd()` | The standard deviation value |
| `min()` | The minium value |
| `max()` | The maxium value |

<br>

## **4. Distribution functions**

| Function | Description |
| -------- | ----------- |
| `rnorm()` | The normal distribution |
| `rbinom()` | The binomial distribution |
| `rpois()` | The poisson distribution |
| `runif()` | The uniform distribution |

<br>

## **5. Other functions**

| Function | 
| -------- |
| `sum()` |
| `prod()` |
| `length()` |
| `sort()` |
| `seq()` |
| `rep()` |

### **Example for `sum()` function**

***Code***
```
sum(1, 2, 3)
```

***Result***
```
[1] 6
```

***Code***
```
sum(1:10)
```

***Result***
```
[1] 55
```

### **Example for `prod()` function**

***Code***
```
prod(1, 4, 5)
```

***Result***
```
[1] 20
```

### **Example for `length()` function**

***Code***
```
length(c(1, 2, 3, 5))
```

***Result***
```
[1] 4
```

### **Example for `sort()` function**

***Code***
```
sort(c(1, 5, 4, 2))
```

***Result***
```
[1] 1 2 4 5
```

***Code***
```
sort(c(1, 5, 4, 2),
     decreasing = TRUE)
```

***Result***
```
[1] 5 4 2 1
```

### **Example for `seq()` function**

***Code***
```
seq(from = 1, to = 5)
```

***Result***
```
[1] 1 2 3 4 5
```

***Code***
```
seq(from = 1, to = 5, by = 0.5)
```

***Result***
```
[1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0
```

***Code***
```
seq(from = 1, to = 5, length.out = 6)
```

***Result***
```
[1] 1.0 1.8 2.6 3.4 4.2 5.0
```

### **Example for `rep()` function**

***Code***
```
rep(1:3, times = 2)
```

***Result***
```
[1] 1 2 3 1 2 3
```

***Code***
```
rep(1:3, times = c(1, 2, 3))
```

***Result***
```
[1] 1 2 2 3 3 3
```

***Code***
```
rep(1:3, each = 2)
```

***Result***
```
[1] 1 1 2 2 3 3
```