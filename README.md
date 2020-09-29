# Regex-extension

#---------------------------------------------------------------------DESCRIPTION-------------------------------------------------------------------------------
This project provides the opportunity to extend the regexes of trufflehog by adding your additional regexes while maintaining the default regexes by trufflehog, in  your regexes checks.The script automate the entire regex checks extension process for you. 

#---------------------------------------------------------------------INSTRUCTION-------------------------------------------------------------------------------
 All you need to do is, create a json file named "regex.json" in the
 same directory as this script. Then insert your regex into the file. 
 An example file could contain :

	{
	    "username": "[a-zA-Z][a-zA-Z0-9]+",
			"password": "/^[^;&.~[:space:]]{5,20}$/"
		}

# To run the script type $sudo script.sh
# NB: don’t forget the $ attached to sudo
