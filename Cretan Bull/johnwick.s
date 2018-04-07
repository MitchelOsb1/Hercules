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


; attack:	zjmp%:l1
; 	zjmp %:jumper

; l1: fork %:l2
; 	live %1
; 	ld	%4294967296, r1
; 	st	r1,	5
; 	st	r3,	10
; 	st	r6,	15
; 	ld %4294967296, r1
; 	zjmp %:l2

; l3: fork %:l1
; 	live %1
; 	ld	%4294967296, r1
; 	st	r1,	5
; 	st	r3,	10
; 	st	r6,	15
; 	ld %4294967296, r1
; 	zjmp %:attack

; jumper: sti	r1,%:attack,%1
; 	sti	r1,%:attack,%15
; 	sti	r1,%:attack,%20
; 	sti	r1,%:attack,%25
; 	sti	r1,%:attack,%30
