######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Finding Runs of Consecutive Ones                 #
#                                                                    #
#####################################################################



# In the function "findruns", x is a vector or 1s and 0s and 
# k is the length of run to find


findruns <- function(x, k){
  n <- length(x)
  runs <- NULL
  for(i in 1:(n - k + 1)){
    # need to determine whether all k values 
    # (x[i], x[i + 1], ... x[i + k - 1]) are 1s
    # applying all() tells us if there is a run there...
    if(all(x[i:(i + k - 1)] == 1)) runs <- c(runs, i)
  }
  return(runs)
}

x <- c(1,0, 0, 1, 1, 1, 0, 1, 1)

findruns(x, 2)

findruns(x, 3)

findruns(x, 6)

