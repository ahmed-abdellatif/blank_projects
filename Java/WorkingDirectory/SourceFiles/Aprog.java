/****************************************************************
 * 'Aprog.java'
 * Main file for program
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 11-26-2017--13:10:40
 *
**/
import java.io.*;
import java.util.*;

public class Aprog {

  public static void main(String[] args) {
  final String in_file = args[0];
  final String out_file = args[1];
  final String log_file = args[2];
  String out_stream = "XX";
  String log_stream = "XX";

  out_stream = out_file + "\nBeginning Execution\n";
  log_stream = log_file + "\nBeginning Execution\n";

  /****************************************************************
   * Add Code Here:
  **/

  out_stream += "Ending Execution\n";
  log_stream += "Ending Execution\n";

  write_to_file(out_file, out_stream);
  write_to_file(log_file, log_stream);

  }//end main function

  /****************************************************************
   * Function 'write_to_file'
  **/
  private static void write_to_file(String file_name, String output) {
    try {
      PrintWriter file_writer = new PrintWriter(new FileOutputStream(file_name));
      file_writer.println(output); //print to file
      file_writer.close(); //close stream
    }//end try
    catch (Exception exception) {
      System.out.println(exception.getMessage()); //if error occurs
    }//end catch
  }//end write_to_file
}

/****************************************************************
 * End 'Aprog.java'
**/

