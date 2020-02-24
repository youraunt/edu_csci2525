TITLE reorder.asm
COMMENT*
        Name: Brice Allen
        ID : XXXXX2188
        Class : CSCI 2525
        Assignment : PA3.1
        Due Date : February 23, 2020
      *

INCLUDE Irvine32.inc;/* include dependencies */

move EQU <MOV>;/* macro to replace typo move with MOV*/

COMMENT*
		Prototypes a function or procedure.
		You can call the function prototyped by the PROTO
		directive by using the INVOKE directive.
		syntax label PROTO[distance][language type][, [param]:tag]
	   *
exitProcess PROTO, dwExitCode: DWORD

.data
;/* macros to set registers to zero */
clearEAX TEXTEQU <MOV EAX, 0>
clearEBX TEXTEQU <MOV EBX, 0>
clearECX TEXTEQU <MOV ECX, 0>

;/* declare and initialize array with three elements */
arrayD DWORD 1255h, 4597h, 1233h

.code

main proc

CALL DumpRegs;/* Display registers function call from irvine32, shows contents prior to clearing */

;/* Call functions to clear registers */
clearEAX
clearEBX
clearECX

CALL DumpRegs;/* Display registers function call from irvine32, shows contents after clearing */

MOV EAX, [arrayD];/* puts the first element into EAX */
MOV EBX, [arrayD + 4];/* puts the second element into EBX, + 8 to access second element b/c DWORD is four bytes */
MOV ECX, [arrayD + 8];/* puts the third element into ECX, + 8 to access third element b/c DWORD is four bytes */

CALL DumpRegs;/* Display registers function call from irvine32, shows contents after moving array to registers */

XCHG EAX, ECX;/* exchange index 0 with index 2 */
XCHG EBX, ECX;/* exchange index 1 with index 2 */

CALL DumpRegs;/* Display registers function call from irvine32, shows contents after XCHG, now in proper order */

INVOKE	exitProcess, 0

main ENDP

END main
