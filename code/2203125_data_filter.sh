
file=$1   #taking file name as positional argument
field_name=$2  #taking field name as positional argument
field_value=$3  #taking field value as positional argument


file_name="us_$field_name _$field_value"

echo -n "$file_name  "    #printing filename

echo -n "$field_name  "     #printing field name


echo -n "$field_value  "     #printing field value

a=0             #defining a new variable a


for i in $file      #using for loop over file name
do
	if [[ $field_name == $field_value ]];     #applying conditions
	then
		(( a=$a+1 ))     #adding value in a
	fi
done


echo $a    #printing total number of lines based on given condition
wc -l $file 

for i in $file    #applying for loop on file again
do
	for k in $i
	do
		echo $k #printing first word of each line of file content
	done	
done
