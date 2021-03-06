
;========================== PWM =================
;===================== macro =====================


M_PWM0_ON	MACRO
	LDA	#C_BIT0
	TRB	BP0
	ENDM
M_PWM0_OFF	MACRO
	LDA	#C_BIT0
	TSB	BP0
	ENDM
M_PWM1_ON	MACRO
	LDA	#C_BIT1
	TRB	BP0
	ENDM
M_PWM1_OFF	MACRO
	LDA	#C_BIT1
	TSB	BP0
	ENDM
M_PWM2_ON	MACRO
	LDA	#C_BIT2
	TRB	BP0
	ENDM
M_PWM2_OFF	MACRO
	LDA	#C_BIT2
	TSB	BP0
	ENDM
M_PWM3_ON	MACRO
	LDA	#C_BIT3
	TRB	BP0
	ENDM
M_PWM3_OFF	MACRO
	LDA	#C_BIT3
	TSB	BP0
	ENDM


MR_START_PWMX_TM MACRO

	JSR	BK0_START_TMG1_05MS
	
	ENDM
MR_STOP_PWMX_TM MACRO
; TMG1: 0.5MS
	JSR	BK0_STOP_TMG1

	ENDM


PWM0_ENABLE	MACRO
	LDA	#C_BIT0
	TSB	PWM_FLAG
	ENDM
PWM0_DISABLE	MACRO
	LDA	#C_BIT0
	TRB	PWM_FLAG
	ENDM
PWM1_ENABLE	MACRO
	LDA	#C_BIT1
	TSB	PWM_FLAG
	ENDM
PWM1_DISABLE	MACRO
	LDA	#C_BIT1
	TRB	PWM_FLAG
	ENDM
PWM2_ENABLE	MACRO
	LDA	#C_BIT2
	TSB	PWM_FLAG
	ENDM
PWM2_DISABLE	MACRO
	LDA	#C_BIT2
	TRB	PWM_FLAG
	ENDM
PWM3_ENABLE	MACRO
	LDA	#C_BIT3
	TSB	PWM_FLAG
	ENDM
PWM3_DISABLE	MACRO
	LDA	#C_BIT3
	TRB	PWM_FLAG
	ENDM

;============================================
;--------------- LED PATT  -------------------
;=============================================
MR_START_LED_PATT MACRO VALUE
	LDX	#VALUE
	STX	R_LED_PATT

	LDA	LED_PATT_DIV_TBL,X
	STA	R_LED_PATT_DIV
	STA	R_LED_PATT_DIV_BUF
	JSR BK0_LED_PATT_ST
	ENDM

MR_CHK_PATT_EN MACRO
	LDA	#C_BIT7
	TSB	PWM_FLAG1
	ENDM
MR_CHK_PATT_DIS MACRO
	LDA	#C_BIT7
	TRB	PWM_FLAG1
	ENDM
MR_DET_CHK_PATT MACRO
	LDA	#C_BIT7
	BIT	PWM_FLAG1
	ENDM




