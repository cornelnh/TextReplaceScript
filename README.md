# TextReplaceScript

Author: Noah Cornelius

TextReplaceScript
Overview
This script lets you search for existing words in a file and will replace them with the word you specify. It allows you to simply update text files, essentially what Ctrl + H would do in any text editor, but from the command line. It also makes a backup of the text file, so the original is modified but the backup remains as the first version.

Features
Searches for words or phrases in text files.
Replaces all the words or phrases it finds with the new version.
Creates a backup file of the original.
Has a help guide on how to use the script with -h.

Examples
Basic Replace option: ./text_replace.sh -f <file> -s <search_term> -r <replace_term>
HELP: ./text_replace.sh -h

Options
-f <file> : Specifies the .txt file to be processed (defaults to testfile.txt in the working directory).
-s <search_term> : Specifies the word/s that are being searched for.
-r <replace_term> : Specifies the word/s that are being replaced.
-h : Displays help menu.

Backup
A .bak file will be created as an exact copy before any rewriting is done.

Use Cases
This allows for simple command line file modification, updating config files, editing large documents, and any other bulk word edits needed.