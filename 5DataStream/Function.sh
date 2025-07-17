# greet(){
#   echo "Welcome to the function"
# }

# square(){

# 	v=$1;
# 	sq=$((v*v));
# 	echo "The square of $v is $sq";

# }

# square 4


# square(){

# 	v=$1;
# 	sq=$((v*v));
#     echo $sq;
# }

# r1=$(square 4)
# r2=$(square 6)

# echo "Square root of R1 is $r1 and R2 is $r2."



square(){

	v=$1;
	sq=$((v*v));
    return $sq;
}

square 4

r1=$?

echo "Square root of R1 is $r1"