command="curl"

if command -v $command &> /dev/null ; then
echo "Curl command exixts"
else
echo "curl command doesn't exists"
fi
