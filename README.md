# search2018
This is a set of utilities for using multi-core CPU's and SSD's to speed up searches.

# squishycat
Takes compressed files, and cat's them, decompressing with four different  algorithms.
This means you don't have to think about if you need to use bz2cat, lz4cat, zcat, gzcat, xzcat, or something else.
If you have a squished file, just squishycat it!

# totes1.awk
This sums the first column of the input set and prints it.

For example: if you run wc -l on a bunch of files and pipe that to totes1.awk, it will sum the number of lines for each individual file and print the total.
## Usage
`wc -l taco burrito pizza | totes1.awk`

# printurl.awk
Parses Blue Coat proxy logs and prints the URL.

# Hardware
For my testing, this is the equipment I used:
https://pcpartpicker.com/list/3d2TCb
