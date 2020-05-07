INPUT="data.csv"
Tab='\t'
while IFS= read -r line
do
  echo -e ${line//,/$Tab} >> out.tsv
done < $INPUT
IFS=$OLDIFS
