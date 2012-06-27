use strict;
my $i;
my %map;
sub chain {
    my $num = shift ;
    if($num == 1){
        $i =1;
        return;
    }
    if ($num % 2 == 0 ){
        chain($num/2);
        $i++;
        $map{$num} = $i;
    }else {
        chain(3*$num + 1);
        $i++;
        $map{$num}= $i;
    }
}

foreach my $num ( 1 .. 999999 ){
    chain($num) if (! exists $map{$num} );
}

my @sorted = sort { $map{$b} <=> $map{$a} } keys %map;
print $sorted[0],":",$map{$sorted[0]};
