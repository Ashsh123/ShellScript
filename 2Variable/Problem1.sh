# Problem Statement : Automate a Directory Backup Script
# Objective : use variables in a bash Script to automate the backup of a specific directory. The script sholud take the directory name as a variable, compress the directory, and save the backup with a timestamp.

# directory_to_backup="/d/documets/echo/Variable" #This is the directory which we want to zip and create a backup

# backup_location="/d/documets/echo"   #This is the path where we want to store the backup

# current_date=$(date +%Y-%m-%d) #value of the current date which will append in the backup file name

# echo "$directory_to_backup"    # value of the current date which will be appended in the backup file name

# tar -czf "$backup_location/backup-$current_date.tar.gz" "$directory_to_backup"   #Creating a backup

# echo "backup of $directory_to_backup completed successfully on $current_date inside $backup_location"


directory_to_backup=$1 #This is the directory which we want to zip and create a backup

backup_location=$2   #This is the path where we want to store the backup

current_date=$(date +%Y-%m-%d) #value of the current date which will append in the backup file name

echo "$directory_to_backup"    # value of the current date which will be appended in the backup file name

tar -czf "$backup_location/backup-$current_date.tar.gz" "$directory_to_backup"   #Creating a backup

status=$?

echo "backup of $directory_to_backup completed successfully on $current_date inside $backup_location"

if [ $status -eq 0 ]; then
exit 0;
else
exit 1;
fi
