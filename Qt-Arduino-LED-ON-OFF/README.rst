Introduction
============
This is a simple LED Control application similar to 'Hello World' in any
programming language. This app will show a qt dialog box on to make LED ON
(or) OFF. The LED is connected to Arduino board PIN number 13.

There are two sets of program :

 #. Micro-controller side a.k.a Arduino board (C Program to receive commands from Computer over USB/Serial )

 #. Computer side (Python script for qt-window and serial communication)



Pre-Requisite
-------------

 #. Install Qt-4 Designer

 #. Install PyQt

 #. Arduino IDE (AVR-GCC and other dependencies, better to use package manager to handle dependencies)

 #. Arduino board connected through USB cable.


Usage
-----
First of all write the *DigitalReadSerial.pde* to Arduino board.

Change the permission of serial port (one which is connected to Arduino)

:: 
 
    sudo chmod 666 /dev/ttyACM0

The qt dialog box designed in Qt-Designer is saved as a XML script
(LED-ON-OFF.ui). Convert this XML file to Python file using :

command::

     pyuic4 LED-ON-OFF.ui > test_ui.py

After conversion one can remove LED-ON-OFF.ui.

Then create a file *test.py* with the given content and run it as :

::

    python test.py

Note that, file will run only if the serial port is selected properly.
Just replace the LED with any real world Analog/Digital device and enjoy
controlling it from your system.

License
-------
GNU GPLV3

