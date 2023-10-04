;left-side barrier tower gravity
;by mikairanutshack

;INC #2 = extremely high gravity (default)
;INC #1 = high gravity
;DEC #1 = low gravity
;DEC #2 = extremely low gravity

Main:
LDA $13D4|!addr
ORA $71
BNE +
REP #$20
LDA $96
INC #2		;this line is configurable
STA $96
SEP #$20
RTL
