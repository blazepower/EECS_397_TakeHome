<?php
	$fileName = fopen("data.csv","r");
  // while ( !feof($fileName)) {
  //   $input =
  // }
  $input = fread($fileName, 13421772);
  $output = str_replace(",", "\t", $input);
  echo $output;
  $outfile = fopen("out.tsv", "w");
  fwrite($outfile, $output);
  fclose($outfile);
?>
