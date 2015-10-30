<?php

function __construct($persons_name) 
{           
	$this->name = $persons_name;            
}     

$params = '';
$codeLine = '';

foreach($argv as $mutatorName)
{
	if($mutatorName !== 'makeconstructor.php') //I don't really know how $argv works...
	{
		$params .= '$' . $mutatorName . ', ';
		$codeLines .= '$this->'. $mutatorName .' = $'. $mutatorName .';';
	}
}

echo '
	 public function __construct(' . $params . ')
	 {' . 
		$codeLines . 
	 '}'
	 ;
 
foreach($argv as $mutatorName)
{
	if($mutatorName !== 'makeconstructor.php') //I don't really know how $argv works...
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
		if($letter == '.' || $letter == '!' || $letter == '?'){
			$cap = true;
		}elseif($letter != ' ' && $cap == true){
			$letter = strtoupper($letter);
			$cap = false;
		}

		$ret .= $letter;
	}

	return $ret;
}