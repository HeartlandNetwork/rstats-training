######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Predicting Discrete Valued Time Series           #
#                                                                    #
#####################################################################

# Dataset: LakeHuron - Annual Measurements of the level, in feet, 
# of Lake Huron, 1875 - 1972."
#

library(ggplot2) # To plot model error against the predictor k


# Pt 1: Creating discrete-valued time series dataset from LakeHuron
# ------------------------------------------------------------------------------

generate_ones_and_zeros <- function(x) { 
  
  j <- length(x) 
  y <- NULL
  
  for (i in 1:(j - 1) ) {
      
    if ((x[i + 1] - x[i]) > 0) {
       y <- c(y, 1)
    }
       
    else {
      y <- c(y, 0)
    }
  }
  return(y)
}

LakeHuron_DTS <- generate_ones_and_zeros(LakeHuron)

LakeHuron

length(LakeHuron)

LakeHuron_DTS

length(LakeHuron_DTS)

# Pt 2: Predicting discrete-valued time series - from Norman's book
# -----------------------------------------------------------------------------
# 
# Purpose - to predict increase or decrease in lake levels based on past
#   data. k is the number of of previous years to use to predict next year's
#   lake level. We use the majority rule for k years, meaning k/2.
#   To determine what is the best value of k, we need to 
#   know the error associated with the model
#   using that value of k. So we also need to determine error. 
#   The code below uses the second approach in the book, which includes
#   performance gains by using the sum of the previous computation rather
#   than calculating the new sum from scratch. 
#   There is a third method in the book which eliminates the subtraction
#   in the for loop by using by using cumsum()...

predb <- function(x, k) {
  n <- length(x)
  k2 <- k/2
  pred <- vector(length = n - k)
  sm <- sum(x[1:k])
  if (sm >= 2) {
    for (i in 2:(n - k)) {
      sm <- sm + x[i + k - 1] - x[i - 1]
      if (sm >= k2) pred[i] <- 1 else pred[i] <- 0
    }
  }
  return(mean(abs(pred - x[(k + 1):n]))) # <<< determines error
}

kmax <- 95

for (k in 1:kmax) {
  pred_error <- predb(LakeHuron_DTS, k)
  print(pred_error)
}

k < 1: 

