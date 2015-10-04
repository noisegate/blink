# blink

This is just a reminder, how to program without arduino (ide).

In this example I blink pin 8, not 13. Maybe I'll change that in the future.

![alt](https://github.com/noisegate/kicadlib/blob/master/pics/atduino.png)

Anyway, pin 8 on an arduino is bit 0 in register B. In the pic we can see it is 
chip pin 14 and in the datasheet we can find this is register B etc.. Or some other
pinout graph. 

The upload can be used also for arduino ide built hex files. Usualy you can find those
in /tmp (GNU/linux). eg:

```bash

avrdude -p m328p -c stk500 -e -U flash:w:Blink.cpp.hex

```

