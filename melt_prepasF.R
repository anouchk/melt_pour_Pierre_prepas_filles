# Let's call the library
library(data.table)

# Let's set the working directory
setwd('/Users/analutzky/Desktop/2022_04_filles_CPGE_scientifique')

# Let's read our csv
Table_prepasF=fread('viz-tableau4.csv')

# showing it excel-like
View(Table_prepasF)

# showing column names
colnames(Table_prepasF)

var.names=colnames(Table_prepasF)
### getting rid of space and special characters in columns names 
colnames(Table_prepasF)=make.names(var.names)
# showing column names
colnames(Table_prepasF)

colnames(Table_prepasF)[5] = "Total_admis"
colnames(Table_prepasF)[6] = "Total_candidats"
colnames(Table_prepasF)[7] = "Filles_admis"
colnames(Table_prepasF)[8] = "Filles_candidats"

Table_prepasF_meltee= melt(Table_prepasF,
							id.vars=c("Académie","Etablissement","Filière","Session"),
							measure.vars=patterns("^Total", "^Filles"),
							variable.name="Type de bacheliers",
							value.name=c("Total","Filles")

	)

write.csv2(as.data.frame(Table_prepasF_meltee),file='PrepasF_meltee.csv',fileEncoding = "UTF8")