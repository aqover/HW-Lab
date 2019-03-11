// segment
ORI $r0 $r0 #65520
ORI $r1 $r1 #65524
ORI $r2 $r2 #65528
ORI $r3 $r3 #65532

// sw
ORI $r4 $r4 #65504
ORI $r5 $r5 #65508
ORI $r6 $r6 #65512

// constant
ORI $r30 $r30 #1

// loop
loop:
LW $r10 0($r4)
LW $r11 0($r5)
LW $r12 0($r6)

// JMP display
// reset r7 to zero
ADD $r20 $r20 $r31 011
ADD $r7 $r7 $r31 011
BEQ $r12 $r7 add
// plus one to r7 = 1
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 sub
// plus one to r7 = 2
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 or
// plus one to r7 = 3
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 and
// plus one to r7 = 4
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 xor
// plus one to r7 = 5
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 notA
// plus one to r7 = 6
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 comA
// plus one to r7 = 7
ADD $r7 $r7 $r30 000
BEQ $r12 $r7 comB

JMP display

display:
SW $r10 0($r0)
SW $r11 0($r1)
SW $r20 0($r8)
SW $r20 0($r2)
LW $r20 4($r8)
SW $r20 0($r3)
JMP loop

add:
ADD $r20 $r10 $r11 000
JMP display

sub:
ADD $r20 $r10 $r11 001
JMP display

or:
ADD $r20 $r10 $r11 010
JMP display

and:
ADD $r20 $r10 $r11 011
JMP display

xor:
ADD $r20 $r10 $r11 110
JMP display

notA:
ADD $r20 $r10 $r11 110
JMP display

comA:
ADD $r20 $r10 $r11 101
JMP display

comB:
ADD $r20 $r11 $r11 101
JMP display