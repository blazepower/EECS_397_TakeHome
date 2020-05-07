<?php
$name = "Rishik Hombal";
for($i = 0; $i < strlen($name); $i++){
	if($name[$i] != " "){
		$fileName = $name[$i];
		$output = fopen($fileName, "w");
		fclose($output);
	}
}
?>
