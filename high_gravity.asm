;========================
;left-side barrier tower
; pseudo high gravity
; by mikairanutshack
;========================
; note: if you want the
; 'gravity' to be low,
; pushing mario upward,
; like the second section
;of left-side barrier tower,
; please edit the line
; that says ADC #$0002
; to say ADC #$FFFE instead
;========================

Main:
LDA $13D4|!addr
ORA $71
BNE +
REP #$20
LDA $96
INC #2
STA $96
SEP #$20
RTL	
