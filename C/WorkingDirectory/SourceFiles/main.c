/****************************************************************
 * 'main.c'
 * Main file for programming in c
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 11-26-2017--13:08:22
 *
**/

/****************************************************************
 * included files/library
**/
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

/****************************************************************
 * global variables
**/

/****************************************************************
 * Function: 'Main'
**/

int main(int argc, char *argv[]) {

  /****************************************************************
   * Take Files In:
   * xin = argv 1
   * xout = argv 2
   * xlog = argv 3
  **/

  char const* const in_file = argv[1];
  char const* const out_file = argv[2];
  char const* const log_file = argv[3];
  FILE *file = fopen(in_file, "r");
  printf("Reading From File %s\n",in_file);
  char line[256];
  int i = 0;
  while(fgets(line, sizeof(line), file)) {
    printf("Line Read: %d\n",atoi(line));
  }

  printf("Beginning Computation\n");

  /**
    * add your code here
  **/

  printf("Main Function Complete\n");

  return 0;

}//end main
/****************************************************************
 * End 'main.c'
**/

