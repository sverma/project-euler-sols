use strict;
my $i;
my %map;
sub chain {
    my $num = shift ;
    if (exists $map{$num}){
        $i = $map{$num};
        return;
    }
    if($num == 1){
        $i =1;
        $map{$i}=1;
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

my $max_l=0;
my $max_num;
foreach my $num (keys %map){
    
    if ( $map{$num} > $max_l ){
        $max_l = $map{$num};
        $max_num = $num;
    }
}

print "$max_num \n";
