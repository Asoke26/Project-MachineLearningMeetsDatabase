import os
import pymonetdb

## Query PATH
PATH = "/home/ad26/Project-MachineLearningMeetsDatabase/data/SAMPLE-"
args = ["1000",'10K','100K','FULL']
FULL_PATH = PATH+args[3]+"/training_query.csv"

## Setting Up connection with monetdb Database
try:
	CONNECTION = pymonetdb.connect(username="monetdb",password="monetdb",hostname="localhost",database="JOB")
	CURSOR = CONNECTION.cursor()
except Exception as e:
	raise e

def query_exec(qry):
	CURSOR.execute(qry)
	result = CURSOR.fetchall()[0][0]
	return str(result)


if __name__ == "__main__":
	
	file_w = open(PATH+args[3]+"/training_query_cardinality.csv",'w')
	c = 0
	for line in open(FULL_PATH,'r').readlines():
		result = query_exec(line)
		q_c = line.strip()+"#"+result
		print(q_c)
		file_w.writelines(q_c+"\n")

		c+=1
		print(c)