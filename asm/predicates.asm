#
# Test predicates and branch
#
	addi	r0 = r0, 0;  # first instruction not executed

	addi	r1 = r0, 2;
	addi	r2 = r0, 2;

	cmpeq   p1  = r1, r2;
	(p1) bc	0;
	addi	r3 = r0, 3;
	addi	r4 = r0, 4;
	addi	r5 = r0, 5;
	addi	r6 = r0, 6;
	halt;
