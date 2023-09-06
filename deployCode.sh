#!/bin/bash

# GitHub repository URL
github_repo="https://github.com/mohanvedase/cicd_assignment.git"

# Local repository path
local_repo_path="F:\krishna\IT\Hero\Hero_devops_assignment\hero_devops_assignment5\cicd_assignment"

# Nginx server path for the index.html file
nginx_html_path="/var/www/cicd_assignment"  # Replace with your actual Nginx server path

# Check if the local repository exists
if [ ! -d "$local_repo_path" ]; then
    # If the local repository doesn't exist, clone it
    git clone "$github_repo" "$local_repo_path"
else
    # Navigate to the local repository directory
    cd "$local_repo_path"
    # Restore changes

    git restore .

    # Pull the latest changes
    git pull

    # Copy the updated index.html to the Nginx server path
    sudo cp index.html "$nginx_html_path"
    echo "Copied HTML file successfully"

    # Restart Nginx to reflect changes
    sudo systemctl restart nginx
fi
