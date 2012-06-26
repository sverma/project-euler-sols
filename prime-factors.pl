$inNum = shift;
$maxP = 0; 
foreach $num ( 2 .. sqrt($inNum) ){
	if ( isprime($num) ) { 
		if ( $inNum % $num == 0 ) { 
			$maxP = $num ;
		}
	}
}
sub isprime{
	$num = shift;
	foreach $num2 ( 2 .. sqrt($num) ) { 
		if ($num%$num2 == 0 ) { 
			return 0;
		}
	}
	return 1 ;
} 	 
print $maxP,"\n";
