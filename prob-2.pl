$init1 = 1; 
$init2 = 2 ; $cnt = 1 ; 
$sum = 0;  
print $init1,"\t"; 
while(1)  { 
$cnt++ ;  $temp = $init2 ;  $init2 += $init1; $init1 = $temp ; print "$init1\t" ;
	if ( $init1 > 4000000 ) { 
		print "\nSUM= $sum\n" ; 
		print "$str\n"; 
		exit;
	} ; 
	if($init1%2==0) { 
		$sum += $init1 ;  print "(sum=$sum)\t\n" ;
	        $str = $str ."+$init1" ; 	
	} 
} 
