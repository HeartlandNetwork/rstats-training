
# Chapter 2 - Vectors - code from book

# typeof(x) gives datatype of vector

# vector indices always start with 1, not 0

# Adding and deleting vector elements ------------------------------------------
# Vectors are like arrays in C, you cannot insert or delete elements

x <- c(88, 5, 12, 13)

x

x <- c(x[1:3], 168, x[4]) # insert 168 before the 13

x # we created a new vector x

# Obtaining the length of a vector ---------------------------------------------

x <- c(1, 2, 4)

length(x)

# getting length is useful of index purposes, for example 

first1 <- function(x) {
  for (i in 1:length(x)) {
    if (x[i] == 1) break
  }
  return(i)
}

first1(x)

# for (n in x) does not work because we need an explicit loop that requires
#   the length of x

# also, length(x) will fail when 

x <- c()

x

length(x)

1:length(x)

# better alternative is seq()

#  Matrices and Arrays as Vectors ----------------------------------------------

# Matrices and Arrays are classes of vectors
#   Rules for Matrices and arrays are same as vectors

m <- matrix(c(1, 3, 2, 4), nrow=2, ncol=2)

m + 10:13


# Declarations -----------------------------------------------------------------

# Like Python and Perl, you don't declare variables

z <- 3  # is acceptable without declaration

# y[1] <- 5
# y[2] <- 12

# does not work however, you do need to define y as

y <- c(5, 12)

# The reading and writing of vectors are handled by functions. So y[2], for 
# example, won't work.

x <- c(1, 5)

x 

x <- "abc"

x  # x is just a pointer 


# Recycling --------------------------------------------------------------------

# R repeats the shorter vector so it matches the longer one

c(1, 2, 4) + c(6, 0, 9, 20, 22)


x <- matrix(c(1, 2, 3, 4, 5, 6), nrow=3, ncol=2)

x

x + c(1, 2)

# x is actually a six-element vector. We recycled c(1, 2) three times.

# This is the same as the following

x <- matrix(c(1, 2, 3, 4, 5, 6), nrow=3, ncol=2)

y <- matrix(c(1, 2, 1, 2, 1, 2), nrow=3, ncol=2)

x + y


# Common Vector operations -----------------------------------------------------

# Vector Arithmetic and Logical Operations -------------------------------------

# R is functional language, even + is function

2 + 3

# is same as

"+"(2,3)

# scalars are vectors, more general

x <- c(1, 2, 4)

x + c(5, 0 , -1)

x * c(5, 0 , -1)

x <- c(1, 2, 4)

x / c(5, 4, -1)

x <- c(1, 2, 4)

x %% c(5, 4, -1)


# Indexing vectors -------------------------------------------------------------

# format for indexing is vector1[vector2]

y <- c(1.2, 3.9, 0.4, 0.12)

y[c(1,3)]

y[2:3]

v <- 3:4

y[v]

# more examples

x <- c(4, 2, 17, 5)

y <- x[c(1, 1, 3)] # repeats allowed

y

z <- c(5, 12, 13)

z[-1] # negative index means exclude
 
z[-1:-2]

z[1:(length(z)-1)] # every element of z except last 

z[-length(z)] # same as above

# Generating useful vectors with the : operator --------------------------------

5:8

5:1

# loop context

x <- 5
i <- 1

for(i in 1: length(x)) { # but this doesn't work??
}

# operator precedence

i <- 2

1:i - 1 # means (1:i) -1, not 1:(i - 1)
# (1:i) is recycled to mean C(1,1)

1:(i - 1)


# Generating vectors with seq() 

seq(from=12, to=30, by=3)

seq(from=1.1, to=2, length=10)

# for(i in 1:length(x))

# for(i in seq(x))
  
x <- c(5, 12, 13)

# seq() gives correct evaluation of NULL

seq(x)

x <- NULL


?Syntax

seq(x)

# Repeating Vector Contants with rep()

x <- rep(8,4)

x

rep(c(5, 12, 13), 3)

rep(1:3, 2)

rep(c(5, 12, 13), each = 2)

# Using all() and any() to report whether any or all arguments are TRUE

x <- 1:10

any(x > 8)

any(x > 88)

all(x > 8)

all(x > 0)






















































































































