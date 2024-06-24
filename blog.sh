#!/bin/sh

# Get the title and date of the post
echo "Enter the title of the blog post:"
read POST_TITLE

echo "Enter the date (YYYY-MM-DD):"
read POST_DATE

# Replace spaces in the title with underscores and convert to lowercase for the filename
FILENAME="$(echo $POST_TITLE | tr '[:upper:]' '[:lower:]' | tr ' ' '_').md"

# Directory where the blog posts are stored
DIRECTORY="steve_site/src/blog/"

# Full path for the new blog post
FILEPATH="$DIRECTORY/$FILENAME"

# Create the blog post with a header
echo "Creating blog post: $FILEPATH"
cat <<EOF > $FILEPATH
# $POST_TITLE
*Date: $POST_DATE*

Start writing your content here...

EOF

echo "Blog post created successfully!"

