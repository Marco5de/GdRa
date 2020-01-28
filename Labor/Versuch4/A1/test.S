#include "asm_regnames.h"

	.data
p1:		.asciiz "Geben sie Zahl1 ein:"
p2: 	.asciiz "Geben sie Zahl2 ein:"
	.text
	.globl entry
entry:
	addiu	sp, sp, -4
	sw	ra, 0(sp)
	

	la	$4,p1
	jal writestring	

	jal readdec
	move t7, $2	

	la $4, p2
	jal writestring

	jal readdec

	addu $4, t7, $2
	
	jal writedec	

	lw	ra, 0(sp)
	addiu	sp, sp, 4	
	jr	ra
	nop
