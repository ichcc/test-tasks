#!/usr/bin/perl

# First argument is path to file with student name in next format
                                                # Krishna 67 68 69 75 100
                                                # Arjun 70 98 63
                                                # Malika 52 56 60
# Second argument - number of line to calc average mark
#
# For example:
    # $ perl average_mark.pl student_source.txt 1
# Count average for first line

sub matrix_read_file {
     my ($filename) = @_;
     my ($num_line) = 1; 
     open (F, $filename) || die "Could not open $filename: $!";
     while ($line = <F> ) { 
        chomp($line); 
        next if $line =~ /^\s*$/; # skip blank lines 
        $matrix_name = $num_line;
        my (@row) = split (/\s+/, $line);
        push (@{$matrix_name}, \@row); # insert the row-array into 
        $num_line++;
        }
    close(F);
}

sub print_matrix {
    my ($matrix_name)= @_;
    my ($sum) = 0;
    my ($average) = 0;
    my ($width)=scalar (@{${$matrix_name}[0]}); #witdth
    for($col = 1; $col < $width; $col++) {
        $sum = $sum + ${$matrix_name}[0][$col];
    }
    $average=$sum/$col;
    print "${$matrix_name}[0][0] - $average\n";
}


matrix_read_file ($ARGV[0]);
print_matrix ($ARGV[1]);
