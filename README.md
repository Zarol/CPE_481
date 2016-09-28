# CPE_481
Project files for the CPE 481 Embedded and Console Games Development course (Fall 2016).

## Instructions
Compile using DASM [(https://sourceforge.net/projects/dasm-dillon/)](https://sourceforge.net/projects/dasm-dillon/)
```
dasm Assignment1.asm -f3 -oAssignment1.bin
```
Run using Stella Atari 2600 Emulator [(http://stella.sourceforge.net/)](http://stella.sourceforge.net/).
Tested on Windows 7 x64.

## Assignment 1
Displays a 1 pixel red line on the screen. It's horizontal position may be moved using left and right on the joystick. Joystick 1 is default mapped to left & right arrow on Stella.  
![Assignment 1 Image](http://i.imgur.com/LdClC1N.png)

## Assignment 2
Displays 2 sprites whose vertical and horizontal movements may be controlled by joystick 1 & 2 respectively. On collision the sprite's color will change. Note that the color is set based on the sprite's location on the screen, if the sprite does not move, it will not change colors. Joystick 1 is default mapped to up, down, left, & right arrow, joystick 2 is mapped to Y, H, G, & J on Stella.  
![Assignment 2 Image](http://i.imgur.com/WVQUsC8.png)
