#!/usr/bin/awk -f 

# Parses Blue Coat proxy logs and prints the URL.

# Writted by Mark W. Jeanmougin, markjx@gmail.com, @markjx01
# Version 1.0
# Last updated: 15 Apr 2018

{split($10, uri, "/"); print uri[3];}
