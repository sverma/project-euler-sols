use strict;
#brute force approach

my @triangles = (1);
my @primes = (2,3,5);
my $maxDivisor =  shift @ARGV || 30;
my ($i,$j,$k,$l,$m,$n); # little old silly temp vars
$i = 2 ; $k =1;
while (1){
    $j = $triangles[scalar(@triangles)-1];
    my $newTri = $i + $j;
    my $noDivisors = 2 ;
    my $start;
    print "Number : $newTri :1: ";
    push (@triangles,($newTri));
    if ( int ($j / 2 ) % 2 == 0 ){
        $start =  int($j/2) + 1 ;
    }else {
        $start = int($j/2);
    }
    # print "start : $start ";
    $start += 2 ;
    print "start : $start End:" , $newTri/2 ;
    while ( $start <= $newTri/2){
        my $isPrime = 1;
        foreach $k (@primes){
            if($start % $k == 0 ){
                $isPrime =0 ; 
            }
        }
        if($isPrime == 1 ){
            push(@primes,$start);
        }
        $start += 2;
    }
    use Data::Dumper;
    foreach my $lprime (@primes){
        last if ( $lprime > $newTri/2);
        my $prime = $lprime ; 
        next if (($newTri % $prime ) != 0 );
        while ($prime <= $newTri/2 ) {
            if ($newTri % $prime ==0 ){
                $noDivisors++;
            }
            $prime += $prime;
        }
    }
    print ":($noDivisors)\n";
    if ($noDivisors >  $maxDivisor){
        print "$newTri : $noDivisors \n";
        exit;
    }
    $i++;
    #exit if ($newTri == 143380 );
}

