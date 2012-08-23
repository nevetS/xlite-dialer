xlite-dialer
============

A simple dialer for xlite 5 since command line dialing is not supported.

Simple Installation:

1) download bin/dialer.exe and place it in c:\dialer\dialer.exe 

2) download the bin/dialer.reg and double click on it.

What should happen at this point is this:

When you have x-lite open and you click on a sip: link in your browser, x-lite dials the number in the sip link.

More complex installation:

1) Download and install auto-hotkey

2) Download the source code from src/dialer.ahk in this repository

3) Right click dialer.ahk and choose "compile" 
    At this point, you should have a dialer.exe for your system.

4) Move dialer.exe anywhere you want.

5) Go to the registry key: HKEY_CLASSES_ROOT\sip\shell\open\command

6) If there's a (default) key there, edit it, otherwise, create it as a REG_SZ value

7) For the value, use the path to dialer.exe followed by "%1" in quotes.  Example:
    "c:\dialer\dialer.exe" "%1"

What should happen at this point is this:

When you have x-lite open and you click on a sip: link in your browser, x-lite dials the number in the sip link.

I use this on a windows 7 system in firefox.  I've done no testing on other browsers and other OS's at this point.  But, if AutoHotKey works and X-Lite works, this should work.

AutoHotKey: http://www.autohotkey.com/
X-Lite: http://www.counterpath.com/    
