use strict;
#DP approach;
my $lineOfPoints = {
    '0x0' => 1,
};
my $gridLen = shift(@ARGV) || 2;
while (1){
    my $newLine = {} ;
    foreach my $point (keys %{$lineOfPoints} ) {
        my ($x,$y) = split('x',$point);
        if(($x+1)<=$gridLen) {
            my $newX = $x+1 ; 
            if(! defined ($newLine->{"${newX}x${y}"})) {
                $newLine->{"${newX}x$y"} = $lineOfPoints->{$point};
            }else {
                $newLine->{"${newX}x$y"} += $lineOfPoints->{$point};
            }
        }
        if(($y+1)<=$gridLen) {
            my $newY = $y +1;
            if(! defined ($newLine->{"${x}x${newY}"})) {
                $newLine->{"${x}x${newY}"} = $lineOfPoints->{$point};
            }else {
                $newLine->{"${x}x${newY}"} += $lineOfPoints->{$point};
            }
        }
    }
    $lineOfPoints = $newLine;
    my $len = scalar ( keys %{$lineOfPoints} );
    if ( $len ==1 ){
        use Data::Dumper;
        print Dumper($lineOfPoints);
        exit;

    }
}
