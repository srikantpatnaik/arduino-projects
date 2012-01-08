Introduction
============
Have you ever thought of controlling your home appliance over Internet. If your answer is Yes,then this project might end your search. This is a simple
prototype to control and monitor your device connected through Arduino over internet.

Lets see how it works:
The Arduino is connected to your web server(localhost in our case) through USB.Your physical device(LED in our case) is connected with Arduino. The Arduino is
programmed to receive signals from Webpage(cgi script) over USB line. To monitor Arduino's action visually, one can connect webcam to see video feed too.

There are two set of program :

 #. Micro-controller side a.k.a Arduino board (C Program to receive commands from Computer over USB/Serial )

 #. Computer side (Python CGI script,ffserver or Motion package)


Pre-Requisite
-------------

 #. Python CGI support

 #. Install Apache, Motion

 #. Arduino IDE (AVR-GCC and other dependencies, better to use package manager to handle dependencies)

 #. Arduino board connected through USB cable.


How to start
------------

 #. Copy the *test.html* to /usr/lib/cgi-bin and change the ownership to *www-data*.

 #. Replace the *motion.conf* file with the given one at /etc/motion/motion.conf .

 #. Write the *DigitalReadSerial.pde* to Arduino board before starting the Apache server.

 #. Change the permission of serial port (one which is connected to Arduino)

:: 
 
    sudo chmod 666 /dev/ttyACM0


To start Apache web server :

::

    sudo service apache2 start


After that,start motion video server.
 
::

    sudo motion


NB: One can also broadcast video with *ffserver* which is a video server
from *ffmpeg* package(recommended for advanced users). The *motion* is also
based on *ffserver*,its easy to configure.

Note that, apache will run successfully only if the serial port is selected properly.
Just replace the LED with any real world Analog/Digital device and enjoy
controlling it from anywhere from the Planet(works from Mobile browser too).

To stop the program, stop apache server and motion server.

License
-------
GNU GPLV3

