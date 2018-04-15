# search2018
This is a set of utilities for using multi-core CPU's and SSD's to speed up searches.

## grepwide
grepwide uses all your CPU & Disk I/O to search as fast as possible.
Check out the script, all the documentation is in there.

Requires squishycat, below and GNU Parallel (from your standard Linux / UNIX repositories)

## squishycat
Takes compressed files, and cat's them, decompressing with four different  algorithms.
This means you don't have to think about if you need to use bz2cat, lz4cat, zcat, gzcat, xzcat, or something else.
If you have a squished file, just squishycat it!

## totes1.awk
This sums the first column of the input set and prints it.

For example: if you run wc -l on a bunch of files and pipe that to totes1.awk, it will sum the number of lines for each individual file and print the total.
### Usage
```
[carl@localhost etc]$ ls group passwd at.deny | parallel grep -c carl {} | totes1.awk
3
```

## printurl.awk
Parses Blue Coat proxy logs and prints the URL.

## sansBlueTeamSummit2018-jeanmougin.pdf
A PDF of my presentation from the [SANS Blue Team Summit 2018](https://www.sans.org/event/blue-team-summit-2018 "SANS Blue Team Summit 2018") on this topic.

## Hardware
For my testing, this is the equipment I used:
https://pcpartpicker.com/list/3d2TCb
