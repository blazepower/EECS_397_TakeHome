BEGIN {
          FS = ","
      }
NR{
a = 0;
for(i = 1;i <= 10;i=i+1){
  if ($i ~ /"print_native"/)
    a = 1;
  }
  if (a==1){
    rmQuotes = length($2)-2;
  	url = substr($2,2,rmQuotes)
  	rmQuotes = length($3)-2;
  	title = substr($3,2,rmQuotes)
  	print url "\t" title
  }
}

END {
}
