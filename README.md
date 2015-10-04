# blink

This is just a reminder, how to program without arduino (ide).

The upload can be used also for arduino ide built hex files. Usualy you can find those
in /tmp (GNU/linux). eg:

```shell

avrdude -p m328p -c stk500 -e -U flash:w:Blink.cpp.hex
```

