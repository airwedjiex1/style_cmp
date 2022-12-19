# style_cmp
A more complex CL utility to analyze and compare text files 

#Author Samuel Kent 22704037

A Tool to examine and compare the style of certain text files. 
Takes one or more .txt files, builds a profile on each of them by counting all occurences of certain types of words 

EXAMPLE OF A BUILT PROFILE:


![test1 style_cmp](https://user-images.githubusercontent.com/46706647/208345902-c3937788-1056-4f3d-bd7c-6e673d2e721f.PNG)


If more than one text file is given as an arg, the tool builds a profile for each of them then compares the Euclidian Distance between the two texts to give an indication as to how similair the two text's writing styles are: https://en.wikipedia.org/wiki/Euclidean_distance

ie.
d = √[ (x2 – x1)2 + (y2 – y1)2]


If one file specified, a profile should be created and printed
If two files given, profile created for each and then compared using the above metric and printed


Some definitions for this program's profiles:
	Word = can be a "word-pair", a contraction or possessive. Is one or more alphabetic chars followed by a space
		or any any punctuation other than hyphen or apostrophe, or the end of the file

	Sentence = is a sequence of one or more words followed by either a full-stop, question-mark or exclamation mark

	Possessive = a simple word followed by an apostrophe (i.e. in effect single quote), 
		     which in turn is immediately followed by "s", e.g. "mother's"

	contraction = a simple word followed by an apostrophe, followed by other alphabetics, e.g. "won't", "shouldn't" 


