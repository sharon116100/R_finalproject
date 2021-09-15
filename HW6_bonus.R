fibo <- function( i ){
  if(i==1) return(1)
  if(i==2) return(1)
  else	return (fibo(i-2)+fibo(i-1))	
}
input.file = "hw6_input.csv"
input <- read.csv(input.file, header=FALSE, sep=",")
output.file = "hw6_answer.csv"
output <- read.csv(output.file, header=FALSE, sep=",")
for (i in input) {
  my_ans <- fibo(i)
  if (my_ans != output[i]){
    print(c("error",i,my_ans,output[i]))
  }
}


