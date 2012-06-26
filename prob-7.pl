use strict;
my $maxPrime = shift(@ARGV) || 11 ; 
my $i = 1 ;
my $count = 0 ;
my @primes = () ;   
push @primes , 2;
while ( 1 ) {
	$i += 2 ;
	my $j;
	my $prime = 1;
	foreach $j (@primes) { 
		if ( $i % $j == 0 ) { 
			$prime = 0 ; 
			last;
		}
	}
	push (@primes,$i) if ( $prime == 1 ) ;
	use Data::Dumper;
	if ( scalar(@primes) == $maxPrime ) {
		print Dumper(\@primes);
		exit;
	}
}   
	
	 
