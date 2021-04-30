; FILE NAME:   Midas_Oden.asm
; AUTHOR:      Midas Oden
; VERSION:     2021/02/07
; PROJECT:     2
; DESCRIPTION: This program will read a value from an array, add another value, and save the sum of those two values into a specific register.

.386 
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

; Setup the input array and the shift variable
.data
		; Create a BYTE array with the label 'input' 
		input byte 1,2,3,4,5,6,7,8
		; Create a BYTE array with the label 'shift'
		shift byte 2
.code
		main proc
			   ; Clear up the registers to make sure there is no old values inside them
			   mov eax, 0
			   mov ebx, 0
			   mov ecx, 0
			   mov edx, 0

			   ; Setup EAX register with first and second values from the input array
			   mov ah, input + 1
			   add ah, shift
			   mov al, input + 2
			   add al, shift
			   
			   ; Setup EBX register with 3rd and 4th values from the input array
			   mov bh, input + 3
			   add bh, shift
			   mov bl, input + 4
			   add bl, shift

			   ; Setup ECX register with 5th and 6th values from the input array
			   mov ch, input + 5
			   add ch, shift
			   mov cl, input + 6
			   add cl, shift
	   
			   ; Setup EDX register with 7th and 8th values from the input array
			   mov dh, input + 7
			   add dh, shift
			   mov dl, input + 8
			   add dl, shift


			   ; exit the program
			   invoke ExitProcess, 0
	   main endp
end main