#!/bin/bash

# Replace with your username if different
USERNAME="janardhanaau"

# Get images with your username, ignoring header, format: REPOSITORY:TAG
images=$(docker image ls --format "{{.Repository}}:{{.Tag}}" | grep "^${USERNAME}/")

if [ -z "$images" ]; then
    echo "No images found with prefix ${USERNAME}/"
    exit 0
fi

for image in $images; do
    echo "Pushing image: $image"
    docker push "$image"
    echo "-----------------------------------------"
done

echo "All images with prefix ${USERNAME}/ pushed successfully."
