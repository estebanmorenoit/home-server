"homeserver-backup.sh" 26L, 705B                                                                                                          16,1          All
#!/bin/bash

# Define source and destination directories
source_dir="/etc/opt/docker/homeserver"
destination_dir="/NAS/configbackup"
max_backups=3

# Create a zip file with the current date and time
current_date=$(date +%Y%m%d%H%M)
zip_file="$current_date-homeserver-backup.zip"

# Zip the contents of the source directory
zip -r "$zip_file" "$source_dir"

# Move the zip file to the destination directory
mv "$zip_file" "$destination_dir"

# Remove the oldest zip files if there are more than max_backups
cd "$destination_dir"
backup_count=$(ls -1 *.zip | wc -l)
if [ "$backup_count" -gt "$max_backups" ]; then
    ls -t *.zip | tail -n +"$((max_backups + 1))" | xargs rm --
fi

echo "Backup completed"