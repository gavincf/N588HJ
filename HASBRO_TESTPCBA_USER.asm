
POI_CHKTEST_PCC_TESTPCBA EQU C_TRUE
.IF(POI_CHKTEST_PCC_TESTPCBA.EQ.C_FALSE)
	JMP	TESTPCBA_PRE
TESTPCBA_RET:
.ENDIF;POI_CHKTEST_PCC_TESTPCBA


