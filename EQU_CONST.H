
;==========================================
;Module version: V01I;2018/11/12 ÐÇÆÚÒ» ÏÂÎç 1:45:50
;==========================================
;readme:
;used SPCH1

CE_EQU_00 EQU	00H
CE_EQU_01 EQU	01H
CE_EQU_02 EQU	02H
CE_EQU_03 EQU	03H
CE_EQU_04 EQU	04H




;============================================
; Configure
;============================================
C_EQU_BUF_EN EQU	0




;============================================
; EQU command:0-7
;============================================

;----------------------------------------
; .7:.4
C_EQU_EVT EQU	80H
;.7 = 0: normal eqution
;.7 = 1: EVT0 trigger next section,
C_EQU_END	EQU	0FFH ;
C_EQU_SOUND EQU	00H
C_EQU_DELAY EQU	10H
C_EQU_DELAY_IDX EQU	20H

;----------------------------------------
;------ EQU action
; .3£º.0
;----------------------------------------
;00H; no action
C_EQU_PATT1	EQU	01H
C_EQU_PATT2	EQU	02H
C_EQU_PATT3	EQU	03H

