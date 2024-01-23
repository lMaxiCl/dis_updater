#!/bin/bash

# URL of the tar archive
TAR_URL="https://discord.com/api/download?platform=linux&format=tar.gz"

# Target download location in the Downloads directory
DOWNLOAD_PATH="$HOME/Downloads/discord.tar.gz"

# Download the tar file
curl -L -o "$DOWNLOAD_PATH" "$TAR_URL"

# Check if the download was successful
if [ -f "$DOWNLOAD_PATH" ]; then
    # check if discord is already installed
    # Check if the folder exists in the $HOME directory
    if [ -d "$HOME/Discord" ]; then
        echo "Folder '$FOLDER_NAME' exists in the HOME directory."
        #Delete Discord directory
        rm -rf "$HOME/Discord"
    else
        #continue
        echo "Folder '$FOLDER_NAME' does not exist in the HOME directory."
    fi

    
    if grep -q "discord" ~/.bashrc; then
        echo "The command exists in .bashrc."
    else
        echo "The command does not exist in .bashrc."
        echo "alias discord='$HOME/Discord/Discord'" >> ~/.bashrc
    fi

    # Extract the tar file to HOME
    tar -xf "$DOWNLOAD_PATH" -C "$HOME"

    # Check if untar was successful
    if [ $? -eq 0 ]; then
        # Delete the tar file
        rm "$DOWNLOAD_PATH"
        echo "The archive has been successfully downloaded, extracted to $HOME, and the tar file has been deleted."
    else
        echo "Failed to extract the tar file."
    fi
else
    echo "Download failed."
fi

