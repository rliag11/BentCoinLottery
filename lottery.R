# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

#Example of one lottery ticket
#the following block of code iterates the 10 numbers of a lottery ticket
ticket <- array(0,10) #initialize array of ticket's 10 numbers
for (i in 1:10){
  ticket[i] <- if (runif(1) < 0.5) 1 else 0 #equivalent to coin flip. 
  #distribution giving less than 1/2 is eequivalent to give one side of coin. 
  #we define 1 as heads
}

#Following block iterates 100 lotter tickets: each with an array of 10 numbers.
for (j in 1:100){
  ticket <- array(0,10)
  for (i in 1:10){
    ticket[i] <- if (runif(1) < 0.5) 1 else 0 #See former block of example code
  }
  print(ticket)
}
