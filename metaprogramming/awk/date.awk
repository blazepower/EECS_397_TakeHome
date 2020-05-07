BEGIN{
  outfile = "date.bash"
  print "echo $(date '+%F')" > outfile
}
