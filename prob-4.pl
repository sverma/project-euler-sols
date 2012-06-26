$max = 0 ; 
foreach $i ( 100 .. 999 ) { 
	foreach $j ( $i .. 999 ) { 
		$num = $i * $j;
		$str = "$num";
		$str2 = reverse(split('',$str)); 
		if ( $str =~ /^$str2$/ ){ 
			$max = $num if ( $max == 0 ) ; 
			$max = $num if ( $num > $max ) ; 
		}
			
	}
}
print "$max\n";
