# Locked-folder
A vbscript that locks a hidden folder

this program was written in visual basic script to make it easy to run without needing to install anything on your computer

# how to use
Downolad Lock.vbs and double-click it, it will ask you to set a password. then it will automatically create the hidden directory and generate the Key.vbs file. one that is done 

you won't need Lock.vbs, you can use Key.vbs to log into your folder.

# Additionnal info
the hidden folder location and the password are hardcoded into Key.vbs (as hex) which means you can move wherever you want, and rename it anything with the .vbs extention at the end and it will still open the same folder. 

you can't use the same Lock.vbs script more than one time to make multiple folders. as each usage of the script overrides the last one.

# How does it work
Tt creates a hidden folder in the %userprofile% folder and opens it whenever you type the passwords. The directory path and the password are stored in hexadecimal to make sure cleaver noobies won't extract that info easily. 

# Disclaimer
This is just a test, or maybe a program that might help you hide your personal files from annoying siblings.

An actual hacker or a programmer or even average people with the right set of skills might be able to decode/crack this way faster than you think

# (Comming soon)
if you want to make the code harder to get hacked, use the randomized version, it uses randomised variable names to make it harder to track what the code is actually doing
