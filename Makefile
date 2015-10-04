blink.elf: blink.c
	avr-gcc -mmcu=atmega328p -Wall -Os -o blink.elf blink.c

blink.hex: blink.elf
	avr-objcopy -j .text -j .data -O ihex blink.elf blink.hex

.PHONY: upload

upload: blink.hex
	avrdude -p m328p -c stk500 -e -U flash:w:blink.hex

clean: 
	rm blink.hex blink.elf
