#Script to normalise a profile
#Author Samuel Kent 22704037
#output as profile_x_norm
#called with: awk -v wc=$wc_prof[x] -v sc=$sc_prof[x] -F "\t" -f normalize.awk profile_[x].txt


{
	#For every element except sentence and word divide by the overall word count and multiply by 1,000
	if ($1 != "sentence" && $1 != "word" ){
	
	$2 = (( $2/wc ) * 1000 )	

	}

	#replace the sentences token with the number of words divided by the number of sentences
	if ($1 == "sentence") {
	$2 = ((wc/sc))

	}

	#remove word as it to be ignored
	if ($1 == "word") {

	$1 = "" 
	$2 = ""

	}

	#Print the now normalized profile to be saved into a file in the bash script
	print $0
	
	}





		
			
		






