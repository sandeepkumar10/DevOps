#!/bin/bash

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# GitHub API URL
API_URL="https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token


# Function to make a GET request to the GitHub API
function github_api_get {

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$API_URL"
}

# Function to list users with read access to the repository
function list_users {

    # Fetch the list of collaborators on the repository
    collaborators="$(github_api_get | jq -r '.[].login')" 

    # Display the list of collaborators
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script

list_users
