


./problem1.sh /d/documets/echo/Variable /d/documets/echo

status=$?;

if [ $status -eq 0 ]; then
echo "Backup is Successfull"
else
echo "Something went wrong";
fi