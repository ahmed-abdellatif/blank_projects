=begin
/****************************************************************
 * 'main.rb'
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 11-29-2017--10:52:51
 *
 **/
=end

#!/usr/bin/env ruby

=begin
/****************************************************************
 * Add Code Here
 **/
=end



def main
   
    # read line by line of input file
    if File.exists? $in_file
        File.foreach( $in_file ) do |line|
            $input_array.push line
        end
    end
    $log_string += "Input Read\n" + $input_array.to_s + "\n"
end

def close 
    # print to output and log file
    File.open( $out_file,"a" ) do |line|
        line.puts "\r" + $out_string
    end
    File.open( $log_file,"a" ) do |line|
        line.puts "\r" + $log_string
    end
end

$out_string = "Begining Execution\n"
$log_string = "Begining Execution\n"
$in_file = ARGV[0]
$out_file = ARGV[1]
$log_file = ARGV[2]
$input_array = []

# call main method
main

$out_string += "Ending Execution"
$log_string += "Ending Execution"

close

=begin
/****************************************************************
 * End 'main.rb'
 **/
=end