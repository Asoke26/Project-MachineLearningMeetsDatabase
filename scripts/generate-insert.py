import os

PATH = "/home/ad26/Project-MachineLearningMeetsDatabase/Main/data/SAMPLE-"
folders = ["1000","10K","100K","DS"]
tables = ["cast_info","movie_info","movie_keyword","movie_companies","movie_info_idx","title"]

file = PATH+folders[2]+"/export_insert_"+tables[1]+"_"+folders[2]+".txt"
print(file)


# INSERT_QUERY = "INSERT INTO "+tables[1]+" VALUES ("

## File for writing output
file_2 = PATH+folders[2]+"/export_insert_"+tables[1]+"_"+folders[2]+"_insert.txt" 

f_w = open(file_2,"w")
for line in open(file,'r').readlines():
	INSERT_QUERY = "INSERT INTO "+tables[1]+" VALUES ("
	line = line.split()
	for item in line:
		INSERT_QUERY += item+", "
	INSERT_QUERY=INSERT_QUERY[:-2]
	INSERT_QUERY += ")"
	f_w.writelines(INSERT_QUERY+"\n")
f_w.close()