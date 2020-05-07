infile="userinput.txt"
while IFS= read -r line
do
	  input=$line
done < "$infile"

echo "$input"
s="${input%%&*}"
n=${#s}

input2="${input:n+8:3}"
input1="${input:n-3:3}"

echo " $input1 $input2"
print "<form action=\"index.php\" method=\"post\">\n"
print "<ul>\n"
print "   <li name=\"%s\" value=\"text\">input1</li>\n" $input1
print "   <li name=\"%s\" value=\"text\">input2</li>\n" $input2
print "</ul>\n"
print "  <input type=\"submit\" value=\"Submit\" >\n"
print "</form>\n"
