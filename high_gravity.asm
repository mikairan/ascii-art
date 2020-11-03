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
LDA $13D4	;\  checks if the code
BNE return	; | should actually be
LDA $71		; | running at this time
BNE return	;/ 
REP #$20	;\ 
LDA $96		; | increases mario's
CLC			; | Y-position by 2
ADC #$0002	; | subpixels every
STA $96		; | frame, moving him
SEP #$20	; | downward constantly
RTL			;/
return:
RTL	
