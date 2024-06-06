

breast.cancer <- read.csv("C:/Users/pauma/OneDrive/Escritorio/UNI/2n/AA1/Pràctica/breast-cancer.csv")

  #nombre de missing values que volem posar
samples1 <- sample.int(dim(breast.cancer)[1], round(dim(breast.cancer)[1]*0.05 - 1))  #posar el nombre de missing values que volem posar
#samples2 <- sample.int(dim(dataset)[1], ___)
#...

breast.cancer$fractal_dimension_mean[samples1] <- -9999
breast.cancer$fractal_dimension_se[samples1] <- -9999
breast.cancer$fractal_dimension_worst[samples1] <- -9999
#dataset$___[samples2] <- NA
#...

# SET WORKING DIRECTORY TO SOURCE FILE LOCATION ! sinó a saber on t'escriu el .cvs

write.csv(breast.cancer, "breast-cancer-mv.csv")
