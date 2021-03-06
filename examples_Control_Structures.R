##Examples in R: Control Structures

##if - else:
if(x > 3){
  y <- 10
}else if (x < 3){
  y <- 5
}else{
  y <- 0
}

##Another way:
y <- if(x > 3){
  10
}else if (x < 3){
  5
}else{
  0
}

##################################################

##for loops:
for(i in 1:10){
  print(i)
}

##Other examples:
x <- c("a", "b", "c", "d")

for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}
  
for(letter in x){
  print(letter)
}

for(i in 1:4)print(x[i])

##Nested Loops:

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i, j])
  }
}

################################################################################
##While Loops:

count <- 0

while(count < 10){
  print(count)
  count <- count +1
}

##Other example:
z <- 5

while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1){
    z <- z+1
  }else{
    z <- z-1
  }
}

#############################################################################################
##Repeat Loops:

x0 <- 1
tol <- 1e8

repeat{
  x1 <- computeEstimate()
  
  if(abs(x1 - x0) < tol){
    break
  }else{
    x0 <- x1
  }
}













