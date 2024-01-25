# dis_updater

## Description
This Bash script automates the process of updating Discord on a Linux system. It downloads the latest Discord tarball from the official Discord website, removes any existing Discord installation in the user's home directory, adds an alias to `.bashrc` for easy launching (if not already present), and then extracts the new Discord version to the user's home directory.

## Requirements
- **Bash**: A Unix shell.
- **curl**: Command-line tool for transferring data with URLs.
- **Linux Environment**: This script is intended for use in a Linux environment.

## Setup
1. **Download the Script**: Save the script in a file, for example, `update_discord.sh`.

2. **Make the Script Executable**:
    ```
    chmod +x update_discord.sh
    ```

3. **Run the Script**:
    ```
    sh update_discord.sh
    ```

## Usage
To update Discord, simply run the script. The script performs the following actions:
1. **Downloads** the latest version of Discord from the official website to the `Downloads` directory.
2. **Checks** if Discord is already installed in the user's home directory. If it is, the existing installation is removed.
3. **Adds** an alias to `.bashrc` for easy launching of Discord, if this alias does not already exist.
4. **Extracts** the new Discord installation to the user's home directory.
5. **Cleans Up** by deleting the downloaded tar.gz file after successful extraction.

## Notes
- The script checks for the existence of a Discord directory and a Discord alias in `.bashrc`. Custom modifications to these checks or additional features can be added as needed.
- Ensure internet connectivity before running the script as it requires downloading data from the internet.
- This script assumes that the user's `.bashrc` and Discord installation are in standard locations (`$HOME`).
