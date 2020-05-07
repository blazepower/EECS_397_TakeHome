<?php
  $outfile = fopen("date.awk", "w");
  $content = 'BEGIN{date=strftime("%Y-%m-%d"); print date}';
  fwrite($outfile, $content);
  fclose($outfile);
 ?>
