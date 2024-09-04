#!/bin/bash

pwd
# Get the current working directory
PWD=`pwd`

# Change to the root directory of the Jekyll site
cd _posts_tags

# Check if jekyll is running by checking if port 4000 is open
if nc -z localhost 4000; then
    echo "Jekyll is running."
else
    echo "Jekyll is not running."
    echo "Starting Jekyll"
    # Start the Jekyll server
    bundle exec jekyll build
fi

# Change back to the original working directory
cd $PWD
pwd
ls -al 

# Look at the contents of the file to see if the tags are missing
ls -al ../_site/_site_tags_missing.txt

# Generate a list of tags
cat ../_site/_site_tags_missing.txt | awk -F"," '{print $2}' | sort | \
while read line;
do 
    echo "Processing tag: ${line}";

    # Convert the tag name to lowercase
    FILENAME=${line,,}; 

    # Replace spaces with underscores
    FILENAME=${FILENAME// /_}; 

    # Replace dashes with underscores
    FILENAME=${FILENAME//-/_}; 

    # Replace spaces with dashes and lowercase the title
    # LINE=$(echo ${line,,} | sed 's/ /-/g');

    # Replace lowercase the title for use in the md file title parameter
    LINE=$(echo ${line,,});

    # If the FILENAME is not null, then create a new file
    if [ -z "${FILENAME}" ]; then
        echo "Filename is null. Skipping tag: ${LINE} and Filename: ${FILENAME}";
        continue;
    else 
        # Create a new file with the tag name and md contents
        echo -e "---\ntitle: ${LINE}\nlayout: tags\n---\n" > "${FILENAME}.md";
        echo "Created file: ${FILENAME}.md";
    fi
    
done;

