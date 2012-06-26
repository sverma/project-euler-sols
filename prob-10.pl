use strict;
my @primes=();
push(@primes,2);
my $start = 3 ;
my $sum = 2;
while(1){
    my $isprime = 1;
    my $i;
    foreach $i (@primes){
        last if ( $i> sqrt($start));
        if($start % $i == 0 ){
            $isprime = 0 ;
        }
    }
    last if ($start > 2000000 );
    if ($isprime == 1){
        push(@primes,$start);
        $sum += $start;
        print $primes[scalar(@primes)-1];
        print "\nSUM: $sum \n";
    }
    $start += 2;
}
