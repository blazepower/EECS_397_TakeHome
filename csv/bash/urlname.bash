INPUT=data.csv
var3="\"print_native\""
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read media_id url name pub_country pub_state language about_country media_type public_notes stories_per_day first_story
do
  if [[ "$media_type" == "$var3" ]]; then
    var1="${url:1:${#url}-2}"
  	var2="${name:1:${#name}-2}"
          echo -e "$var1 \t $var2"
	fi
done < $INPUT
IFS=$OLDIFS
