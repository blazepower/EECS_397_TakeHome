BEGIN {
  FS = "&"
}
NR{
	temp = length($1)
	input1 = substr($1,temp-2,3)
	temp = length($2)
	input2 = substr($2,temp-2,3)
	outfile="cgi.html";
	print "<form action=\"index.cgi\" method=\"post\">" > outfile
    	print "<ul>" > outfile
    	print "<li name=\"" input1 "\" value=\"text\">input1</li>" > outfile
    	print "<li name=\"" input2 "\" value=\"text\">input2</li>" > outfile
    	print "</ul>" > outfile
  	print "<input type=\"submit\" value=\"Submit\" >" > outfile
	print "</form>" > outfile
}
