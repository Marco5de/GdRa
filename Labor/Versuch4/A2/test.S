#include "asm_regnames.h"

	.data
p1:		.asciiz "Input n:"
p2:		.asciiz "Ergebnis= "
	.text
	.globl entry
entry:
	addiu	sp, sp, -4
	sw	ra, 0(sp)

	la	$4,p1
	jal	writestring
	
	jal readdec
	move t7, $2

	andi t0,t0, 0	
	ori t0,t0, 1	
	andi t1,t1,0
	ori t1,t1,1

	bnez t7, loop	
	j end
end:
	la $4,p2
	jal writestring

	move $4, t0
	jal writedec

	lw ra, 0(sp)
	addiu	sp, sp, 4	
	jr	ra
	nop


loop:
	mul t0,t0,t1
	beq t1,t7, end		
	addi t1,t1,1
	j loop
