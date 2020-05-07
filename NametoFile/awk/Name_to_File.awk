awk '
BEGIN {

      }
NR{
  fName = "Rishik"
  lName = "Hombal"

	for(i=1;i<=length(fName);i=i+1){
		filen = substr(fName, i, 1)
		print " " > filen
		}
	for(i=1;i<=length(lName);i=i+1){
		filen = substr(lName, i, 1)
		print " " > filen
		}

}

END {
}'
