(test <- data.frame(ID = c(1,2,3), 
                   AY = c(2012, 2014, 2015),
                   Pay00 = c(23, 55, 44),
                   Pay01 = c(56, 47, 38), 
                   Pay02 = c(0, 12, 0),
                   Pay03 = c(2, 0, 33),
                   Pay04 = c(0, 3, 11)))


test.fun <- function(data, yearr) {

return(
    data %>% 
    mutate(Pay00 = ifelse(yearr-AY >= 0, Pay00, 0), 
           Pay01 = ifelse(yearr-AY >= 1, Pay01, 0),
           Pay02 = ifelse(yearr-AY >= 2, Pay02, 0),
           Pay03 = ifelse(yearr-AY >= 3, Pay03, 0),
           Pay04 = ifelse(yearr-AY >= 4, Pay04, 0)) %>% 
        
    mutate(sum = rowSums(.[-c(1,2)]))
    )     
   
}

test.fun(test, 2015)
test.fun(test, 2012)
test.fun(test, 2016)






