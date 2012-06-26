$maxNum = shift(@ARGV) || 10;
($primes,$nonprimes,$startnum,$endnum) = findAllPrime($maxNum) ;

sub findAllPrime{
	$num = shift;
	@primes = (); 
	@nonprimes = () ; 
	$mul = 1 ; 
	$mul2 = 1 ; 
	foreach $i ( 2 .. $num){
		if ( isprime($i) ) { 
			push @primes,$i ;
			$mul *= $i;
		}else{
			push @nonprimes,$i;
		}
		$mul2 *= $i;
	}
	return (\@primes,\@nonprimes,$mul,$mul2);
}

sub isprime{
	$num = shift;
	foreach $i ( 2..sqrt($num) ) { 
		return 0 if ($num %$i == 0 ) ;
	}
	return 1;
}
my ($j,$i);
$j = $startnum;
while ($j < $endnum ) { 
	print "$j\t";
	my $flag = 1; 
	foreach $i ( 2 .. $maxNum ) { 
		if ( $j % $i == 0 ) {
			next; 
		}else {
		        $flag = 0 ; 
		}
	} 
	if ( $flag == 1 ) { 
		print "NUM=$j\n";
		exit;
	}		
	$j += $startnum;
}
	 
