fName="Rishik Hombal"
for(( i = 0; i < ${#fName}; i++ ));do
	if [[ ${fName:$i:1} == [a-zA-Z] ]]; then
		touch ${fName:$i:1}
	fi
done
lName="Hombal"
for(( i = 0; i < ${#lName}; i++ ));do
	if [[ ${lName:$i:1} == [a-zA-Z] ]]; then
		touch ${lName:$i:1}
	fi
done
