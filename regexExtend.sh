#!/bin/bash

# Author 	   : Heynet
# Date created : 25th September, 2020
# Source Repo  : 

# -------------------------- DESCRIPTION ------------------------------

#  The script automate the entire regex checks extension process for you. 
#  All you need to do is, create a json file named "regex.json" in the
#  same directory as this script. Then insert your regex into the file. 
#  An example file could contain :
#
#		{
#		    "username": "[a-zA-Z][a-zA-Z0-9]+",
#			"password": "/^[^;&.~[:space:]]{5,20}$/"
#		}



# Locate the path to trufflehog regexes.json file

regexPath="$(sudo find / -type f -iname "regexes.json")"


# Merge your regex.json with trufflehog's regexes.json file  into a new file newRegexes.json

jq -s add  $regexPath regex.json  | tee newRegexes.json


# Run truffleHog with an extended regexes 

trufflehog  --regex --rules newRegexes.json   --entropy=False https://github.com/dxa4481/truffleHog.git

