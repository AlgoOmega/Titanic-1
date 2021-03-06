#reading the file and transfering the excel dataset to 'titanic'
#titanic csv file is stored in "documents"

titanic=read.csv("titanic.csv")

#to find the structure of the dataset

str(titanic)

# I created a new variable called agecut using the break function inorder to make the ages into groups
# try making graphs without the new variable, you'' understand the problem
# come up with a better solution if you can as well.
# new variable is added to the dataset in this command line itself

titanic$agecut=cut(titanic$Age, breaks = c(1,5,15,25,35,45,55,65,75,85,95,105,115), labels = c("A","B","C","D","E","F","G","H","I","J","K","L"))

#plotting only one variable ie. agecut
plot(titanic$agecut)

# table function is used and followed by plot

new1=table(titanic$agecut, titanic$Sex)
plot(new1)

#Color graph with bar color fill using package "plotly"
ggplot(titanic, aes(titanic$agecut, titanic$Survived)) +
+     + geom_bar(aes(fill = titanic$Sex), stat = "identity") +
+     + ggtitle("Survival Statistics (with gender)")



# i have not included "class" of titanic data set"  eg. 1st class, 2nd and 3rd


#try using these functions

# Thank you!
