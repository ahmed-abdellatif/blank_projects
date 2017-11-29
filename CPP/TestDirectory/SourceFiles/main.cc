#include "main.h"

/****************************************************************
 * 'main.cc'
 * Main file for program
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 11-29-2017--09:26:34
 * THIS IS A TEST FILE CHANGES WILL NOT BE SAVED
 *
**/

static const string kTag = "Main: ";

int main(int argc, char *argv[]) {
  //variables for files

  string in_filename = "XX";
  string out_filename = "XX";
  string log_filename = "XX";
  string out_string = "XX";
  string tim_output = "XX";
  //setup an outstream for data to write to log file
  ofstream out_stream;
  Scanner input_stream;

  //check arguments and store as variables
  Utils::CheckArgs(3, argc, argv, "infilename outfilename logfilename");
  in_filename = static_cast<string>(argv[1]);
  out_filename = static_cast<string>(argv[2]);
  log_filename = static_cast<string>(argv[3]);


  //setup strings and print basic data
  out_string = kTag + "Beginning execution\n";
  out_string += kTag + Utils::TimeCall("Time Start");
  out_stream << out_string << endl;
  Utils::log_stream << out_string << endl;

  out_string = kTag + "infile  '" + in_filename + "'\n";
  out_string += kTag + "outfile '" + out_filename + "'\n";
  out_string += kTag + "logfile '" + log_filename + "'\n";

  out_stream << out_string << endl;
  Utils::log_stream << out_string << endl;
  Utils::log_stream.flush();

  //open input file
  input_stream.OpenFile(in_filename);
  //start the reading

  //open log file
  Utils::LogFileOpen(log_filename);

  //open outfiles and stream
  Utils::FileOpen(out_stream, out_filename);

/*
  Utils::log_stream << kTag << "infile  '" << in_filename << "'\n";
  Utils::log_stream << kTag << "outfile '" << out_filename << "'\n";
  Utils::log_stream << kTag << "logfile '" << log_filename << "'\n";
*/

/**
 * Add Code Here:
**/


  out_string = kTag + "Ending execution" + "\n";
  out_string += kTag + Utils::TimeCall("ending");
  out_stream << out_string << endl;
  Utils::log_stream << out_string << endl;
  Utils::log_stream.flush();

  Utils::FileClose(out_stream);
  Utils::FileClose(Utils::log_stream);

  cout << kTag << "Ending execution" << endl;

  return 0;
}
/****************************************************************
 * End 'main.cc'
**/

