#!/bin/sh

# Shell Wildcards
#
# ?  -- Match exactly one character, any character
#
# *  -- Match zero or more characters
#
# [] -- Match listed characters
#
# {} -- Match groups of files (in zsh or bash)


# List all files that have a single character extension and start with
# the word "foo":
ls foo.?

# List all files that end in .rb:
ls *.rb

# List any file that ends in a single character:
ls *.?

# List all files that end in .rb, .RB, .rB, or .Rb:
ls *.[rR][bB]

# List all files that end in .rb or .RB:
ls *.{rb,RB}

# List all files:
ls *
