# CPE_481
Project files for the CPE 481 Embedded and Console Games Development course (Fall 2016).
+ [Instructions for ASM (Atari 2600)](#instructions-for-asm-atari-2600)
+ [Assignment1.asm](#assignment1asm)
+ [Assignment2.asm](#assignment2asm)
+ [Instructions for BAS (Commodore 64)](#instructions-for-bas-commodore-64)
+ [Assignment1.bas](#assignment1bas)
## Instructions for ASM (Atari 2600)
Compile using DASM [(https://sourceforge.net/projects/dasm-dillon/)](https://sourceforge.net/projects/dasm-dillon/)
```
dasm Assignment1.asm -f3 -oAssignment1.bin
```
Run using Stella Atari 2600 Emulator [(http://stella.sourceforge.net/)](http://stella.sourceforge.net/).
Tested on Windows 7 x64.

## Assignment1.asm
Displays a 1 pixel red line on the screen. It's horizontal position may be moved using left and right on the joystick. Joystick 1 is default mapped to left & right arrow on Stella.  
![Assignment 1 Image](http://i.imgur.com/LdClC1N.png)

## Assignment2.asm
Displays 2 sprites whose vertical and horizontal movements may be controlled by joystick 1 & 2 respectively. On collision the sprite's color will change. Note that the color is set based on the sprite's location on the screen, if the sprite does not move, it will not change colors. Joystick 1 is default mapped to up, down, left, & right arrow, joystick 2 is mapped to Y, H, G, & J on Stella.  
![Assignment 2 Image](http://i.imgur.com/WVQUsC8.png)

## Instructions for BAS (Commodore 64)
Tokenize the .bas file into a .prg. I suggest using CBRM prg Studio [(http://www.ajordison.co.uk/download.html)](http://www.ajordison.co.uk/download.html). Execute the .prg with VICE [(http://vice-emu.sourceforge.net/)](http://vice-emu.sourceforge.net/).
Tested on Windows 7 x64.

## Assignment1.bas
A small program to test the functionality of the C64 SID chip. The program synthesizes a short song using a white noise waveform.  
![Assignment 1 Image](http://i.imgur.com/L4cNKRl.png)
