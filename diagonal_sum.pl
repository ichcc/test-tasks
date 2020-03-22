#!/usr/bin/perl
# based on docstore.mik.ua/orelly/perl2/advprog/ch02_02.htm
#
# To start in cli argument should be path to file with next format:
                                                        # 1 2 3 
                                                        # 4 5 6
                                                        # 7 8 9

# Number of row and column can be different, but diagonal in this version begin only from left upper corner

# For example:
        # $perl diagonal_sum.pl diagonal_source.txt

sub matrix_read_file {
     my ($filename) = @_; 
     open (F, $filename) || die "Could not open $filename: $!";
     while ($line = <F> ) { 
        chomp($line); 
        next if $line =~ /^\s*$/; # skip blank lines 
        $matrix_name = "test";
        my (@row) = split (/\s+/, $line);
        push (@{$matrix_name}, \@row); # insert the row-array into 
        }
    close(F);
}


matrix_read_file ($ARGV[0]);

for($row = 0; $row < scalar @test; $row++) {
        $sum = $sum + $test[$row][$row] ;
}
print $sum;
print "\n";
