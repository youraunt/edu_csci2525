TITLE fibonacci.asm
COMMENT*
Name: Brice Allen
ID : 107452188
Class : CSCI 2525
Assignment : PA3.2
Due Date : February 23, 2020
*

INCLUDE Irvine32.inc;/* inlcude dependencies */

move EQU <MOV>;/* macro to replace typo move with MOV*/


COMMENT*
Prototypes a function or procedure.
You can call the function prototyped by the PROTO
directive by using the INVOKE directive.
syntax label PROTO[distance][language type][, [param]:tag]
exitProcess PROTO, dwExitCode: DWORD
*

.data
;/* macros to clear registers */
clearEAX TEXTEQU <MOV EAX, 0>
clearEBX TEXTEQU <MOV EBX, 0>
clearECX TEXTEQU <MOV ECX, 0>
clearEDX TEXTEQU <MOV EDX, 0>
clearESI TEXTEQU <MOV ESI, 0>
clearEDI TEXTEQU <MOV EDI, 0>
fibonacci DWORD 10 DUP(?)
fibSubList DWORD 10 DUP(?)

.code

main proc
CALL DumpRegs;/* Display registers function call from irvine32 prior to clearing */
;/* Call functions to clear registers */
clearEAX;/* Extended Accumulator, Math */
clearEBX;/* Pointer to Data */
clearECX;/* Counter */
clearEDX;/* I/O Pointer */
clearESI;/* Source Index Data Pointer */
clearEDI;/* Destination Index Data Pointer */
	MOV ESI, OFFSET fibonacci;/* pointer to start of array */
	MOV EDI, OFFSET fibSubList
	MOV EAX, 0
	MOV EBX, 1
	MOV[ESI], EAX;/* store f0=0 */
	ADD ESI, TYPE fibonacci;/* increment array */
	MOV[ESI], EBX;/* store f1*/
	ADD ESI, TYPE fibonacci;/* increment array*/
CALL DumpRegs
	MOV EAX, [ESI - 8];/* Set EAX equal to two elements before esi */
	MOV EBX, [ESI - 4];/* Set EAX equal to one elements before esi */
	MOV EDX, EAX;/* Move EAX to EDX*/
	ADD EDX, EBX;/* Sum EDX and EBX store in edx*/
	MOV[ESI], EDX;/*Store f2 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs;
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f3*/
	ADD ESI, TYPE fibonacci
CALL DumpRegs
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f4 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f5 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f6 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f7 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs
	MOV EAX, [ESI - 8]
	MOV EBX, [ESI - 4]
	MOV EDX, EAX
	ADD EDX, EBX
	MOV[ESI], EDX;/*Store f8 */
	ADD ESI, TYPE fibonacci
CALL DumpRegs


		COMMENT* /*how I want to do this
			MOV bl, [ESI-12]
				ror ebx, 8
			MOV bl, [ESI-8]
				ror ebx, 8
			MOV bh, [ESI-16]
			MOV bl, [ESI -20]
			;*/


CALL DumpRegs;/* Display registers function call from irvine32 */

INVOKE	exitProcess, 0

main ENDP

END main 
