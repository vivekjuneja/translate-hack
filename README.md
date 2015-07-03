# translate-hack
I have been working in a country for sometime where the choice of business communication is NOT english. This creates a practical challenge for me to keep translating all communication using the friendly Google Translate at all times.

This is easier if I am browsing through Web, thanks to Google Translate integration with the Chrome browser.

However, it becomes increasingly challenging for me when I have to translate text in non-web browser based Apps. I found myself constantly fiddling around with a Browser window and putting the copied text to see the translation. This is more pronouned especially if I have a follow an on-going communication on internal chat rooms based on Messenger clients.

Therefore, I took the matters in my own hand. 

This is first attempt, and I hope to make this more easy in future iterations. This is my solution :-

1. Built a Python script that reads through my Clipboard, and then issues a call to Google Translate to perform the translation. The Translation is stored on a file on the File System.
2. Installed Geektool for my Mac. Configured a File  Window that displays the content of the file that contains the translation
3. Now, whenever I need it, I just copy the text and the Shell script that Geektool runs reads from the clipboard, and performs the translation

*Issues faced :-*

Ideally I wanted to use Keyboard shortcuts to kick off the Script, instead of the Geektool having to execute my script repeatedly. However, this attempt failed. I was able to create a new Service using Mac OS Automator, but it never worked correctly, thanks to the issues with Text encoding. I observed that the script does get executed, but it never produces the output desired as it fails to retain the UTF-8 Encoding. All I see as the output is bunch of Question marks "?????? SdSDSd?????". 

I tried the following tools to get around this issue, and arrange for a shortcut to execute the script :-

1. BetterTouchTool
2. KeyboardMaestro
3. Quicksilver


*Caveats performed :-*

1. To resolve the issue, the Python script I wrote is divided into two parts. The first part, just reads off from the Cliboard. The Second part, calls the Google Translate API to get the translation. Both the first and Second part use a File as an intermediary :- CLIPBOARD -> PYTHON SCRIPT 1 -> WRITE TO A FILE -> PYTHON SCRIPT 2 -> READ FILE, CALL GOOGLE TRANSLATE -> WRITE THE TRANSLATION ONTO A FILE.
2. The trigger to execute these commands is manual. I copy the text, and run the shell script. The Shell script is saved on my desktop for quick access.
2. The final File that gets written by the Python Script 2 is then used by me to get it displayed by the Geektool File Window. 


*Tools used :-*

1. Geektool for displaying a window that displays the content of the File where I write the translated text to. 
2. Python 2.7 
3. goslate.py that calls the Google Translate

My main goal was to get a working solution as early as possible.

*Next steps :-*

1. Get a keyboard shortcut to execute the shell command that will update the File window of Geektool
2. Even better, use the Mac OS Automator to perform in-place text substitution (wherever the text is displayed)
