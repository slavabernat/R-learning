## 1
colnames(airquality)	# prints column names for dataset

## 2
x <- airquality[1:2, ]; x	# extracts and prints first 2 rows

# or

airquality[1:2, ]

## 3
nrow(airquality)	# prints a number of rows in dataset

## 4
x <- airquality[152:153, ] ; x

# or

airquality[(nrow(airquality) - 1):nrow(airquality), ]	# prints 2 last rows

## 5
airquality$Ozone[47]	# prints 47th value in column Ozone

## 6
sum(is.na(airquality$Ozone))	# prints count of NAs in Ozone column

## 7
bad <- is.na(airquality$Ozone)
mean(airquality$Ozone[!bad])	#calculates mean of non-empty rows in Ozone

# or

mean(airquality$Ozone[!is.na(airquality$Ozone)])

## 8

oz <- airquality$Ozone > 31
set1 <- airquality[oz, ]		# extracts subset with 1st filter
set1_full <- set1[!is.na(set1$Ozone)]	# removes missing values
tmp <- set1_full$Temp > 90
set2 <- set1_full[tmp, ]		# extracts subset with 2nd filter
mean(set2$Solar.R)

## 9

mean(airquality[airquality$Month == 6, ]$Temp)
