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
COMMENT* 
	array decleration and assignment first two digits are given
	remaining six are assigned unassigned 
       *
fibArr BYTE 0h, 1h, 6 DUP(?)

.code
main proc
CALL DumpRegs;/* Display registers function call from irvine32 */
;/* Clear Registers for a fresh start */
clearEAX;/* Extended Accumulator, Math */
clearEBX;/* Pointer to Data */
	MOV AL, fibArr;/* move 0th element into al */
	ADD AL, [fibarr + 1];/* sum with the first element*/
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 2], AL;/* moves 1 to index 2 */
			
clearEAX
	MOV AL, [fibArr + 1];/* move 1st element into al */
	ADD AL, [fibArr + 2];/* sum with 2nd element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 3], AL;/* moves 2 into index 3*/
			
clearEAX
	MOV AL, [fibArr + 2];/* move 2nd element into al */
	ADD AL, [fibArr + 3];/* sum with 3rd element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 4], AL;/* moves 3 into index 4*/
			
clearEAX
	MOV AL, [fibArr + 3];/* move 3rd element into al */
	ADD AL, [fibArr + 4];/* sum with 4th element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 5], AL;/* moves 5 into index 5*/
			
clearEAX
	MOV AL, [fibArr + 4];/* move 4th element into al */
	ADD AL, [fibArr + 5];/* sum with 5th element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 6], AL;/* moves 8 into index 6*/
			
clearEAX
	MOV AL, [fibArr + 5];/* move 5th element into al */
	ADD AL, [fibArr + 6];/* sum with 6th element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 7], AL;/* moves 13d(dh) into index 7*/
			
clearEAX
	MOV AL, [fibArr + 6];/* move 6th element into al */
	ADD AL, [fibArr + 7];/* sum with 7th element */
		CALL DumpRegs;/* Display registers function call from irvine32 */
			XCHG[fibArr + 8], AL;/* moves 21d(015h) into index 8*/
			

			

	MOV EBX, DWORD PTR[fibArr + 4]

CALL DumpRegs;/* Display registers function call from irvine32 */

INVOKE	exitProcess, 0

main ENDP

END main
