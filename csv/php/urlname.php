<?php
	$fileName = fopen("data.csv","r");
  while( !feof($fileName) ){
		$field = 0;
    $input = fgets($fileName);
		if (strpos($input, "print_native")) {
			for( $i = 0; $i < strlen($input); $i = $i + 1){
				if($field == 1 || $field == 2){
					if($input[$i] != "," && $input[$i] != '"'){
						print($input[$i]);
					}
				}
				if($input[$i] == ","){
					$field = $field + 1;
					if($field == 2){
						print("\t");
					}
					if($field == 3)
						print("\n");
				}
			}
	   }
		}

    fclose($fileName);
?>
