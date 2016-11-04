# R_moodle_bridging_maths_stats

R script and SQL script for retrieving student activity directly from a Moodle
instance.

SQL script retrieves Quiz attempts, allowing only student users arriving from a
Basic LTI tool, and excluding known test users.

R script summarises data and produces 2 figures:
* attempts over time, coloured by the number of the attempt; 
* attempts over time, coloured by number of attempts and split by Quiz
