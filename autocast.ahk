; This is an AutoHotKey script designed to be used with Diablo III
; Pressing F1 will constantly activate skill 1, F2 will activate skill 2, F3 for 3, and F4 for 4
; The keys are togglable.

Thread, interrupt, 0

togF1 := 0
$F1::
togF1 := !togF1
if (togF1) {
	SetTimer, RepeatOne
	}
	else {
	SetTimer, RepeatOne, Off
	}
return

RepeatOne:
	Send {1}
return


togF2 := 0
$F2::
togF2 := !togF2
if (togF2) {
	SetTimer, RepeatTwo
	}
	else {
	SetTimer, RepeatTwo, Off
	}
return

RepeatTwo:
	Send {2}
return


togF3 := 0
$F3::
togF3 := !togF3
if (togF3) {
	SetTimer, RepeatThree
	}
	else {
	SetTimer, RepeatThree, Off
	}
return

RepeatThree:
	Send {3}
return


togF4 := 0
$F4::
togF4 := !togF2
if (togF4) {
	SetTimer, RepeatFour
	}
	else {
	SetTimer, RepeatFour, Off
	}
return

RepeatFour:
	Send {4}
return
