
icons <- c("\U0001F334", "\U0001F332", "\U0001F38B", "\U0001F333", "\U0001F384")

for(i in 0:length(icons)) {
  temp = c()
  vector = c()
  idx<-0
  for(icon in 0:length(icons)) {
    randomNum <- floor(runif(1, min=0, max=4));
    if(idx == 0) {
        vector[idx] <- randomNum
        temp[idx] <- icons[randomNum+1]
    } else {
      while (is.element(randomNum, vector)){
        randomNum <- floor(runif(1, min=0, max=5));
      }
      vector[idx] <- randomNum
      temp[idx] <- icons[randomNum+1]
    }
    idx<-idx+1
  }
  utf8::utf8_print(temp)
}
    
    

