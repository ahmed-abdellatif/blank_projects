# /****************************************************************
#  * 'Aprog.py'
#  *
#  * Author/CopyRight: Mancuso, Logan
#  * Last Edit Date: 11-29-2017--10:52:23
#  *
# **/

#!/usr/bin/python
import sys

# /****************************************************************
#  * Function 'main'
# **/
def main(argv):
    in_file = argv[1]
    out_file = argv[2]
    log_file = argv[3]
    with open(in_file) as file:
        lines = file.read().splitlines()
    #lines is an array of lines from the in_file
    out_stream = "Beginning Computation\n"
    log_stream = "Beginning Computation\n"
    with open(out_file,"w") as text_file:
        text_file.write(out_stream)
    with open(log_file,"w") as text_file:
        text_file.write(log_stream)

# /****************************************************************
#  * add code here
# **/

    out_stream = "Ending Computation\n"
    log_stream = "Ending Computation\n"
    #wb is setting for write with append
    with open(out_file,"ab") as text_file:
        text_file.write(out_stream)
    with open(log_file,"ab") as text_file:
        text_file.write(log_stream)

if __name__ == "__main__":
    main(sys.argv) #execute main function

# /****************************************************************
#  * End 'Aprog.py'
# **/
