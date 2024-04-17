;
; program1.0 asm.asm
;
; Created: 13/02/2024 06:24:43 p. m.
; Author : lolxd
;


; Replace with your application code 
start:
    inc r16
    rjmp start
	in temp,PINB
	andi temp,0b00010000
	brne led_on
	cbi PORT,PB5 ;led_off
	rjmp start
led_on:
    sbi PORTB,PB5 ;led on
	rjmp start