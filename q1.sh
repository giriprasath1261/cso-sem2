echo "Printing the largest file's size and the file's name"
find . -printf '%s %p\n'|sort -nr | head -1
