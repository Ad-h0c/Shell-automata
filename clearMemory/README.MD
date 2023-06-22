# Node Modules Cleaner Script

This repository contains a bash script for cleaning up old `node_modules` directories that have not been accessed in the past 3 weeks. This can help free up disk space and keep your workspace tidy.

## Description

The script searches for directories named `node_modules` starting from a specified directory and its subdirectories. If the `node_modules` directories have not been accessed in the last 21 days, they are considered old and are deleted.

## Usage

1. Clone this repository or download the `delete_old_node_modules.sh` script.

2. Open the script in a text editor and set the `search_directory` variable to the directory where you want to start searching for old `node_modules`. By default, it is set to `/<YOUR DIRECTORY>`.

   ```sh
   # Specify the directory to start searching from
   search_directory="/<YOUR DIRECTORY>"
   ```

3. Make the script executable by running this command:

   ```sh
   chmod +x delete_old_node_modules.sh
   ```

4. Before executing the script, it is highly recommended to run the script in a 'dry-run' mode where it only lists the directories that would be deleted. This can be done by commenting out the `-exec` part of the `find` command inside the script.

   ```sh
   find "$search_directory" -type d -name "node_modules" -atime +21
   ```

5. After verifying that the script targets the correct directories, run the script:

   ```sh
   ./delete_old_node_modules.sh
   ```

## Caution

This script deletes directories and their content. Please use it with caution. Ensure you have backups and you understand which directories are being deleted before running the script.
