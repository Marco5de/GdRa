#include "asm_regnames.h"
#define fp $30

	.data
in1:	.asciiz	"Enter Fibonacci Numer: "
	.text
	.globl entry
entry:
	addiu	sp, sp, -4
	sw	ra, 0(sp)

	la	$4,in1
	jal	writestring
	
	jal readdec
	move t0, $2

	j fibo
	lw $4, 28(fp)
	jal writedec

	lw	ra, 0(sp)
	addiu	sp, sp, 4	
	jr	ra
	nop


fibo:
	addiu sp, sp, -40
	sw $31, 36(sp)
	sw fp, 32(sp)
	move fp, sp
	sw $4, 40(fp)

	lw $2, 40(fp)
	addi t7, $2, -2
	bltz t7, retn
	
	lw $2, 40(fp)
	addi $4, $2,-1	
	j fibo	
	
	lw $2, 28(fp)
	move t5, $2	

	lw $2, 40(fp)
	addi $4, $2,-2
	j fibo
	
	lw $2, 28(fp)
	add $2, $2, t5
	sw $2, 28(fp)
	j	end	

retn:
	lw $2, 40(fp)
	nop
	sw $2, 28(fp)
	j end
	nop
	

end:
	lw $2, 28(fp)
	move sp,fp
	lw $31, 36(sp)
	lw fp, 32(sp)
	addiu sp,sp,40
	j $31
	nop
	
