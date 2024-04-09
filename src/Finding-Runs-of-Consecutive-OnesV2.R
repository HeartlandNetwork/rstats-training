######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Finding Runs of Consecutive Ones                 #
#  Version 2 modified for performance                                #
#                                                                    #
#####################################################################



# In the function "findruns", x is a vector or 1s and 0s and 
# k is the length of run to find

# the vector assignment runs is not efficient
#if(all(x[i:(i + k - 1)] == 1)) runs <- c(runs, i)
# an alternative is to preallocate the memory space
#   runs <- vector(length = n)
# this means we avoid new allocations in the for loop
# prior to return(runs), we redivine runs to remove the
# unused portion



findruns2 <- function(x, k){
  
  n <- length(x)
  runs <- vector(length = n)
  count <- 0 
  
  for(i in 1:(n - k + 1)){
    
    if(all(x[i:(i + k - 1)] == 1)){
      count <- count + 1
      runs[count] <- i
    }
  }
  if (count > 0) {
    runs <- runs[1:count]
  } else runs <- NULL

  return(runs)
}

x <- c(1,0, 0, 1, 1, 1, 0, 1, 1)

findruns2(x, 2)

findruns2(x, 3)

findruns2(x, 6)

