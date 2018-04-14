```
colMean calculates the mean of column data in csv
files given the dir, column name & file ids. For example,
colMean("specdata","sulfate",1:10) returns the mean
of the sulfate col in specdata/001.csv...specdata/010.csv
After constructing the path strings, columns are combined
into one vector, whose mean is then calculated
```
## Example usage
```
source('~/Documents/Developer/cousera/2 R Programming/week2 colMean/colMean.R')
> colMean("specdata","sulfate",1:10)
[1] 4.064128
> colMean("specdata","nitrate",70:72)
[1] 1.706047
> colMean("specdata","nitrate",23)
[1] 1.280833
```
