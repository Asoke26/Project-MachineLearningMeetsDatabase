## Including Libraries
import os

## Path of existing data
PATH = "/home/ad26/Project-MachineLearningMeetsDatabase/learnedcardinalities/data/"
PATH_DATA = "/home/ad26/Project-MachineLearningMeetsDatabase/data/"

# ## Retrive query from abstract query
def constructSelction(selections):
	result = ""
	c = 0
	selections = selections.split(',')
	for i in selections:
		result+= i+" "
		c+=1
		if(c%3==0): result+="AND "
	return result 


def toQuery(line):
	line = line.split("#")
	tables = line[0]
	joins = line[1]
	selections = line[2]

	## Building Query
	query = "SELECT count(*) from "

	for table in tables.split(','):
		query+= " "+table+','
	query = query[:-1]

	query+=" WHERE "

	if len(joins) > 0:
		for join in joins.split(','):
			query+= " "+join+" AND "

	if len(selections) > 0:	
		resultStr = constructSelction(selections)[:-4]
		query+=resultStr+";"
	else :
		query=query[:-5]+";"

	return query

## Reading from File
file_content = open(PATH+"train.csv",'r').readlines()
file_write = open(PATH_DATA+"training_query.csv","w")
c = 0
for line in file_content:
	query = toQuery(line)
	file_write.writelines(query+"\n")
	c+=1
	print("Query Processed ",c)
	



