# style_cmp
A more complex CL utility to analyze and compare text files 

#Author Samuel Kent 22704037

A Tool to analyize and compare the style of certain text files. 
Takes one or more .txt files, builds a profile on each of them by counting all occurences of certain types of words 

EXAMPLE OF A BUILT PROFILE:

Test 1: bash style_cmp sample1.txt
Comparison:
EXPECTED             |    ACTUAL
====================================
also               1 | 1
although           0 | 0
and               13 | 13
as                 8 | 8
because            0 | 0
before             0 | 0
but                2 | 2
comma             27 | 27
compound_word     10 | 10
contraction        0 | 0
for                0 | 0
if                 0 | 0
nor                0 | 0
of                 8 | 8
or                 0 | 0
semi_colon         5 | 5
sentence          12 | 12
since              1 | 1
that               6 | 6
though             0 | 0
until              1 | 1
when               0 | 0
whenever           0 | 0
whereas            0 | 0
which              0 | 0
while              0 | 0
word             321 | 321
yet                0 | 0


If more than one text file is given as an arg, the tool builds a profile for each of them then compares the Euclidian Distance between the two texts.
ie

d = √[ (x2 – x1)2 + (y2 – y1)2]


#If one file specified, a profile should be created and printed
#If two files given, profile created for  each and then compared using a metric


#Some definitions for this program:
#	Word = can be a "word-pair", a contraction or possessive. Is one or more alphabetic chars followed by a space
#		or any any punctuation other than hyphen or apostrophe, or the end of the file
#
#	Sentence = is a sequence of one or more words followed by either a full-stop, question-mark or exclamation mark
#
#	Possessive = a simple word followed by an apostrophe (i.e. in effect single quote), which in turn is immediately# 			followed by "s", e.g. "mother's"
#
#	contraction = a simple word followed by an apostrophe, followed by other alphabetics, e.g. "won't", "shouldn't" 


