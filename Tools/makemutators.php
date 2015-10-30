<?php

/**
 * Given field names, this will write out getters and setters 
 * It will take any amount of field names
 
 Example: $ php makemutators.php name type
 
 Output: 
 
 public function getName()
 {
         return $this->name;
 }

 public function setName($name)
 {
         $this->name = $name;
 }

 public function getType()
 {
         return $this->type;
 }

 public function setType($type)
 {
         $this->type = $type;
 }
 
 *  
 */ 

foreach($argv as $mutatorName)
{
	if($mutatorName !== "makemutators.php") //I don't really know how $argv works...
	{
		echo '
		public function get'.sentenceCase($mutatorName).'() 
		{
			return $this->'. $mutatorName .';
		}
					
		public function set'.sentenceCase($mutatorName).'($'. $mutatorName .')
		{
			$this->'. $mutatorName .' = $'. $mutatorName .';
		}			
		';
	}
}


function sentenceCase($s){ //thought this was a built in function
	$ret = '';
	// $str = strtolower($s);
	$str = $s;
	$cap = true;

	for($x = 0; $x < strlen($str); $x++){
		$letter = substr($str, $x, 1);
		if($letter == "." || $letter == "!" || $letter == "?"){
			$cap = true;
		}elseif($letter != " " && $cap == true){
			$letter = strtoupper($letter);
			$cap = false;
		}

		$ret .= $letter;
	}

	return $ret;
}