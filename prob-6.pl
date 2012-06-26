use strict;
my $num = shift(@ARGV)|| 10;
print sumOfsquares($num) - squareOfsums($num) ; 

sub sumOfsquares{
	my $num = shift ; 
	my $sum;
	my $i;
	foreach $i ( 1 .. $num ) {
		$sum = $sum + ($i*$i) ; 
	}
	return $sum;
}

sub squareOfsums { 
	my $num = shift;
	my $sum ;
	my $i;
	foreach $i ( 1 .. $num ) { 
		$sum += $i;
	}
	return ($sum * $sum ) ;
}  
