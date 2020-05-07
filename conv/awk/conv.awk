BEGIN {
        FS = ","
      }
NR{
	gsub(/,/, "\t")
  for(i=1;i<=13;i=i+1){
    print $i > "out.tsv"
  }
}

END {
}
