a <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_size <- 4
s_median <- numeric(length(a))
s_mean <- numeric(length(a))
s_boundary<-numeric(length(a))
for (i in 1:length(a)) {
  s <- max(1, i - bin_size)
  e <- min(length(a), i + bin_size)
  bmean <- mean(a[s:e])
  bmedian <- median(a[s:e])
  s_mean[i] <- bmean
  s_median[i]<- bmedian
  if( i==s )
    s_boundary[i]<-a[i]
  else if ( i==e)
    s_boundary[i]<-a[i]
  else 
  {
    temp1=(a[s]-a[i])*-1
    print(paste(a[s],"-",a[i],"=",temp1))
    temp2=(a[e]-a[i])*1
    print(paste(a[e],"-",a[i],"=",temp2))
    if (temp1>temp2)
    {
      s_boundary[i]<-a[e]
    }
    else if(temp1<temp2)
    {
      s_boundary[i]<-a[s]
    }
  }
  
}
#cat("Original a:", a, "\n")
cat("Smoothed mean:", s_mean, "\n")
cat("Smoothed median:",s_median, "\n")
cat("Smoothed boundary:",s_boundary, "\n")
