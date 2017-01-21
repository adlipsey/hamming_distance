This program takes two arrays representing DNA nucleotide sequences and
compares them, counting the number of nucleotides that do not match.
This number is known as the Hamming distance of the two DNA chains.

What It Can Do:
 - Generate, display, and compare two random DNA nucleotide sequence arrays of
   user defined length.
 - Accept user supplied strings of nucleotide sequences, convert to arrays, and
   check if the two arrays are of equal length. If so, it will determine the
   Hamming distance, if not, it will inform the user the two sequences must be
   of equal length.

What It Can't Do / Future Improvements:
 - Save DNA sequences and Hamming distance to a user defined file for reference.
 - Import DNA sequences from text file to prevent the need for the user to
   manually type in the two sequences.
 - Select only letters from the user supplied sequences, it currently will add
   any characters entered into the array, including spaces and commas.
 - Check if any non-nucleotide characters (other than C,A,T,G) have been entered
   by the user.
 - Allow the program to be run multiple times before closing. Currently the
   program will run once until encountering an error in user input, or until
   completion.

The idea for this project came from exercism.io. If you would like to read
their exercise readme, it is available here:
http://exercism.io/exercises/ruby/hamming/readme
