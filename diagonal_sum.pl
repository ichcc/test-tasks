#!/usr/bin/perl
# based on docstore.mik.ua/orelly/perl2/advprog/ch02_02.htm

sub matrix_read_file {
     my ($filename) = @_; 
     open (F, $filename) || die "Could not open $filename: $!";
     while ($line = <F> ) { 
         chomp($line); 
         next if $line =~ /^\s*$/; # skip blank lines 
         $matrix_name = "test";
         my (@row) = split (/\s+/, $line);
        push (@{$matrix_name}, \@row); # insert the row-array into 
                                               # the outer matrix array 

                                    # } 
            }
    close(F);

}


matrix_read_file ($ARGV[0]);

for($row = 0; $row < scalar @test; $row++) {
        $sum = $sum + $test[$row][$row] ;
}
print $sum;
print "\n";
