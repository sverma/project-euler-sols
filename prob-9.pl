foreach $i ( 1 .. 499 ) { 
	foreach $j ( $i .. 499 ) { 
		$k = 1000 - ( $i + $j ) ; 
		@array = ($i,$j,$k);
		@array = sort {$a <=> $b} @array; 
#		print "@array\n";
		if ( ( ($array[0] * $array[0]) + ($array[1]*$array[1]) ) == ( $array[2] * $array[2] ) ) { 
			print "Pythogon triplet :" ,  $i*$j*$k ;
		} 
	}
	
}
