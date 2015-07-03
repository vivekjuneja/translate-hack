# translate-hack
I have been working in a country for sometime where the choice of business communication is NOT english. This creates a practical challenge for me to keep translating all communication using the friendly Google Translate at all times.

This is easier if I am browsing through Web, thanks to Google Translate integration with the Chrome browser.

However, it becomes increasingly challenging for me when I have to translate text in non-web browser based Apps. I found myself constantly fiddling around with a Browser window and putting the copied text to see the translation. This is more pronouned especially if I have a follow an on-going communication on internal chat rooms based on Messenger clients.

Therefore, I took the matters in my own hand. 

This is first attempt, and I hope to make this more easy in future iterations. This is my solution :-

1. Built a Python script that reads through my Clipboard, and then issues a call to Google Translate to perform the translation
2. Installed Geektool for my Mac. Configured a Shell Window that executes the Shell Script continuously, every 1 second.
3. Now, whenever I need it, I just copy the text and the Shell script that Geektool runs reads from the clipboard, and performs the translation

Issues faced :-
1. Ideally I wanted to use Keyboard shortcuts to kick off the Script, instead of the Geektool having to execute my script repeatedly. However, this attempt failed. I was able to create a new Service using Mac OS Automator, but it never worked correctly, thanks to the issues with Text encoding. I observed that the script does get executed, but it never produces the output desired as it fails to retain the UTF-8 Encoding. All I see as the output is bunch of Question marks "?????? SdSDSd?????". 

Caveats performed :-
1. To resolve the issue, the Python script I wrote is divided into two parts. The first part, just reads off from the Cliboard. The Second part, calls the Google Translate API to get the translation. Both the first and Second part use a File as an intermediary :- CLIPBOARD -> PYTHON SCRIPT 1 -> WRITE TO A FILE -> PYTHON SCRIPT 2 -> READ FILE, CALL GOOGLE TRANSLATE -> WRITE THE TRANSLATION ONTO A FILE.
2. The final File that gets written by the Python Script 2 is then used by me to populate the Geektool Shell Window. I placed the command to perform "cat" on that file constantly, so that the Shell window is always updated of the latest content in the "Final" File.

Tools used :-
1. Geektool for displaying a window that displays the content of the File where I write the translated text to. 
2. 
