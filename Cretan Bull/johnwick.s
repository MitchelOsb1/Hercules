.name	"John Wick"
.comment	"Time to Slay"

l1:
	sti	r1,%:l1,%15
	sti	r2,%:l1,%30
	sti	r3,%:l1,%45
	sti	r4,%:l1,%60
	sti	r5,%:l1,%75
	st r1, 10
	live %0
	ld %1337, r2
	sti r1,%:l1,%1
	zjmp %:l1
