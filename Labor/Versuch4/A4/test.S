#include "asm_regnames.h"

	.data
test:	.asciiz	"Hello, Worldle"
	.text
	.globl entry
entry:
	addiu	sp, sp, -4
	sw	ra, 0(sp)

	la	$4,test
	jal	writestring
	nop

	lw	ra, 0(sp)
	addiu	sp, sp, 4	
	jr	ra
	nop
