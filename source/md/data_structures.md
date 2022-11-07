# **Data structures**

| Data structure | 
| -------------- |
| vector |
| list |
| factor |
| matrix | 
| data.frame |

<br>


## **1. vector**

### **Declaration**

***Code & Result***
```
vector1 <- c(1, 2, 3, 4, 5)
```

```console
[1] 1 2 3 4 5
```
### **Element access**

***Code & Result***
```
vector1[3]	
```

```console
[1] 3
```

***Code & Result***
```
vector1[-3]	
```

```console
[1] 1 2 4 5
```

***Code & Result***
```
vector1[c(1, 3, 5)]	
```

```console
[1] 1 3 5
```

***Code & Result***
```
vector1[c(TRUE, TRUE, FALSE, TRUE, TRUE)]	
```

```console
[1] 1 2 4 5
```

***Code & Result***
```
vector1[c(TRUE, FALSE, TRUE)]	
```

```console
[1] 1 3 4
```

<br>

## **2. list**

### **Declaration**

***Code & Result***
```
list1 <- list(
  a = c(1, 2, 3),
  b = c("Apple", "Orange"),
  c = c(TRUE, FALSE)
)
```

```console
$a
[1] 1 2 3

$b
[1] "Apple" "Orange"

$c
[1] TRUE FALSE
```
### **Element access**

***Code & Result***
```
list1$a	
```

```console
[1] 1 2 3
```
***Code & Result***
```
list1[[2]]	
```

```console
[1] "Apple" "Orange"
```

<br>

## **3. factor**

### **Declaration**

***Code & Result***
```
factor1 <- factor(c("A", "A", "B", "A"))
```

```console
[1] A A B A
Levels: A B
```
### **Element access**

***Code & Result***
```
factor1[3]	
```

```console
[1] B
Levels: A B
```

<br>

## **4. matrix**

### **Declaration**

***Code & Result***
```
matrix1 <- matrix(data = 1:12,
                  nrow = 3)
```

```console
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```

### **Element access**

***Code & Result***
```
matrix1[1, 2]
```

```console
[1] 4
```

***Code & Result***
```
matrix1[1,]
```

```console
[1]  1  4  7 10
```

***Code & Result***
```
matrix1[,2]
```

```console
[1] 4 5 6
```

***Code & Result***
```
matrix1[c(1, 3), c(1, 4)]
```

```console
     [,1] [,2]
[1,]    1   10
[2,]    3   12
```

<br>

## **5. data.frame**

### **Declaration**

***Code & Result***
```
data1 <- data.frame(Column1 = c(1, 2, 3),
                    Column2 = c(4, 5, 6),
                    row.names = c("Row1", "Row2", "Row3"))
```

```console
     Column1 Column2
Row1       1       4
Row2       2       5
Row3       3       6
```

### **Element access**

***Code & Result***
```
data1[1, 2]
```

```console
[1] 4
```

***Code & Result***
```
data1[2,]
```

```console
     Column1 Column2
Row2       2       5
```

***Code & Result***
```
data1[,2]
```

```console
[1] 4 5 6
```

***Code & Result***
```
data1[2:3, 1:2]
```

```console
     Column1 Column2
Row2       2       5
Row3       3       6
```