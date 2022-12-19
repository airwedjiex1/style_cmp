#Author Samuel Kent 22704037
#An awk script to find the Euclidian Distance between the two texts 
#takes two profiles as input



{
{

	#select only lines from profile 1
	if(NR==FNR) {
		p1[$1]=$2
	}

	#select only lines from prof 2
       	else if(NR!=FNR) {

		#find the absolute value of p1 - p2 for each line
       		diff=p1[$1]-$2
		diff_squared=(diff^2)
		diff_abs=sqrt(diff_squared)
	}
	

	#print some output
	print $1 " " diff_abs
	
	#Sum all the element values
	sum+=diff_abs	

	}

	}

	END{
		print "The Euclidian Distance between the two texts is: " sum

		}
