
.IF (C_RGB_TABLE_EN .EQ. 1)
;要做三色灯的渐亮灭，为避免一个周期太长，要分成三个PWM控制
;色度为32级才平滑。
;500Us作为一个计数
;为不闪，频率应在64以上

;BP14:R
;BP15:G
;BP16:B
;
;红R31，G0，B0 ,Y0
;黄R31，G31，B0,Y0
;绿R0，G31，B0,Y0
;青R0，G31，B31,Y0
;蓝R0，G0，B31,Y0
;紫R31，G0，B31,Y0
;白R31，G31，B31,Y0
T3LED_TABLE0:
	DB	32,00,00,00;红R31，G0，B0 ,Y0;000
	DB	32,01,00,00                  ;001
	DB	32,02,00,00                  ;002
	DB	32,03,00,00                  ;003
	DB	32,04,00,00                  ;004
	DB	32,05,00,00                  ;005
	DB	32,06,00,00                  ;006
	DB	32,07,00,00                  ;007
	DB	32,08,00,00                  ;008
	DB	32,09,00,00                  ;009
	DB	32,10,00,00                  ;010
	DB	32,11,00,00                  ;011
	DB	32,12,00,00                  ;012
	DB	32,13,00,00                  ;013
	DB	32,14,00,00                  ;014
	DB	32,15,00,00                  ;015
	DB	32,16,00,00                  ;016
	DB	32,17,00,00                  ;017
	DB	32,18,00,00                  ;018
	DB	32,19,00,00                  ;019
	DB	32,20,00,00                  ;020
	DB	32,21,00,00                  ;021
	DB	32,22,00,00                  ;022
	DB	32,23,00,00                  ;023
	DB	32,24,00,00                  ;024
	DB	32,25,00,00                  ;025
	DB	32,26,00,00                  ;026
	DB	32,27,00,00                  ;027
	DB	32,28,00,00                  ;028
	DB	32,29,00,00                  ;029
	DB	32,30,00,00                  ;030
	DB	32,31,00,00                  ;031
	DB	32,32,00,00;黄R31，G31，B0,Y0;032
	DB	31,32,00,00                  ;033
	DB	30,32,00,00                  ;034
	DB	29,32,00,00                  ;035
	DB	28,32,00,00                  ;036
	DB	27,32,00,00                  ;037
	DB	26,32,00,00                  ;038
	DB	25,32,00,00                  ;039
	DB	24,32,00,00                  ;040
	DB	23,32,00,00                  ;041
	DB	22,32,00,00                  ;042
	DB	21,32,00,00                  ;043
	DB	20,32,00,00                  ;044
	DB	19,32,00,00                  ;045
	DB	18,32,00,00                  ;046
	DB	17,32,00,00                  ;047
	DB	16,32,00,00                  ;048
	DB	15,32,00,00                  ;049
	DB	14,32,00,00                  ;050
	DB	13,32,00,00                  ;051
	DB	12,32,00,00                  ;052
	DB	11,32,00,00                  ;053
	DB	10,32,00,00                  ;054
	DB	09,32,00,00                  ;055
	DB	08,32,00,00                  ;056
	DB	07,32,00,00                  ;057
	DB	06,32,00,00                  ;058
	DB	05,32,00,00                  ;059
	DB	04,32,00,00                  ;060
	DB	03,32,00,00                  ;061
	DB	02,32,00,00                  ;062
	DB	01,32,00,00                  ;063
	DB	00,32,00,00;绿R0，G31，B0,Y0 ;064
	DB	00,32,01,00                  ;065
	DB	00,32,02,00                  ;066
	DB	00,32,03,00                  ;067
	DB	00,32,04,00                  ;068
	DB	00,32,05,00                  ;069
	DB	00,32,06,00                  ;070
	DB	00,32,07,00                  ;071
	DB	00,32,08,00                  ;072
	DB	00,32,09,00                  ;073
	DB	00,32,10,00                  ;074
	DB	00,32,11,00                  ;075
	DB	00,32,12,00                  ;076
	DB	00,32,13,00                  ;077
	DB	00,32,14,00                  ;078
	DB	00,32,15,00                  ;079
	DB	00,32,16,00                  ;080
	DB	00,32,17,00                  ;081
	DB	00,32,18,00                  ;082
	DB	00,32,19,00                  ;083
	DB	00,32,20,00                  ;084
	DB	00,32,21,00                  ;085
	DB	00,32,22,00                  ;086
	DB	00,32,23,00                  ;087
	DB	00,32,24,00                  ;088
	DB	00,32,25,00                  ;089
	DB	00,32,26,00                  ;090
	DB	00,32,27,00                  ;091
	DB	00,32,28,00                  ;092
	DB	00,32,29,00                  ;093
	DB	00,32,30,00                  ;094
	DB	00,32,31,00                  ;095
	DB	00,32,32,00;青R0，G31，B31,Y0;096
	DB	00,31,32,00                  ;097
	DB	00,30,32,00                  ;098
	DB	00,29,32,00                  ;099
	DB	00,28,32,00                  ;100
	DB	00,27,32,00                  ;101
	DB	00,26,32,00                  ;102
	DB	00,25,32,00                  ;103
	DB	00,24,32,00                  ;104
	DB	00,23,32,00                  ;105
	DB	00,22,32,00                  ;106
	DB	00,21,32,00                  ;107
	DB	00,20,32,00                  ;108
	DB	00,19,32,00                  ;109
	DB	00,18,32,00                  ;110
	DB	00,17,32,00                  ;111
	DB	00,16,32,00                  ;112
	DB	00,15,32,00                  ;113
	DB	00,14,32,00                  ;114
	DB	00,13,32,00                  ;115
	DB	00,12,32,00                  ;116
	DB	00,11,32,00                  ;117
	DB	00,10,32,00                  ;118
	DB	00,09,32,00                  ;119
	DB	00,08,32,00                  ;120
	DB	00,07,32,00                  ;121
	DB	00,06,32,00                  ;122
	DB	00,05,32,00                  ;123
	DB	00,04,32,00                  ;124
	DB	00,03,32,00                  ;125
	DB	00,02,32,00                  ;126
	DB	00,01,32,00                  ;127
	DB	00,00,32,00;;蓝R0，G0，B31,Y0;128
	DB	01,00,32,00                  ;129
	DB	02,00,32,00                  ;130
	DB	03,00,32,00                  ;131
	DB	04,00,32,00                  ;132
	DB	05,00,32,00                  ;133
	DB	06,00,32,00                  ;134
	DB	07,00,32,00                  ;135
	DB	08,00,32,00                  ;136
	DB	09,00,32,00                  ;137
	DB	10,00,32,00                  ;138
	DB	11,00,32,00                  ;139
	DB	12,00,32,00                  ;140
	DB	13,00,32,00                  ;141
	DB	14,00,32,00                  ;142
	DB	15,00,32,00                  ;143
	DB	16,00,32,00                  ;144
	DB	17,00,32,00                  ;145
	DB	18,00,32,00                  ;146
	DB	19,00,32,00                  ;147
	DB	20,00,32,00                  ;148
	DB	21,00,32,00                  ;149
	DB	22,00,32,00                  ;150
	DB	23,00,32,00                  ;151
	DB	24,00,32,00                  ;152
	DB	25,00,32,00                  ;153
	DB	26,00,32,00                  ;154
	DB	27,00,32,00                  ;155
	DB	28,00,32,00                  ;156
	DB	29,00,32,00                  ;157
	DB	30,00,32,00                  ;158
	DB	31,00,32,00                  ;159
	DB	32,00,32,00;紫R31，G0，B31,Y0;160
	DB	32,01,32,00                  ;161
	DB	32,02,32,00                  ;162
	DB	32,03,32,00                  ;163
	DB	32,04,32,00                  ;164
	DB	32,05,32,00                  ;165
	DB	32,06,32,00                  ;166
	DB	32,07,32,00                  ;167
	DB	32,08,32,00                  ;168
	DB	32,09,32,00                  ;169
	DB	32,10,32,00                  ;170
	DB	32,11,32,00                  ;171
	DB	32,12,32,00                  ;172
	DB	32,13,32,00                  ;173
	DB	32,14,32,00                  ;174
	DB	32,15,32,00                  ;175
	DB	32,16,32,00                  ;176
	DB	32,17,32,00                  ;177
	DB	32,18,32,00                  ;178
	DB	32,19,32,00                  ;179
	DB	32,20,32,00                  ;180
	DB	32,21,32,00                  ;181
	DB	32,22,32,00                  ;182
	DB	32,23,32,00                  ;183
	DB	32,24,32,00                  ;184
	DB	32,25,32,00                  ;185
	DB	32,26,32,00                  ;186
	DB	32,27,32,00                  ;187
	DB	32,28,32,00                  ;188
	DB	32,29,32,00                  ;189
	DB	32,30,32,00                  ;190
	DB	32,31,32,00                  ;191
	DB	32,32,32,00;白R31，G31，B31,Y0;1920
	DB	32,31,31,00                  ;193
	DB	32,30,30,00                  ;194
	DB	32,29,29,00                  ;195
	DB	32,28,28,00                  ;196
	DB	32,27,27,00                  ;197
	DB	32,26,26,00                  ;198
	DB	32,25,25,00                  ;199
	DB	32,24,24,00                  ;200
	DB	32,23,23,00                  ;201
	DB	32,22,22,00                  ;202
	DB	32,21,21,00                  ;203
	DB	32,20,20,00                  ;204
	DB	32,19,19,00                  ;205
	DB	32,18,18,00                  ;206
	DB	32,17,17,00                  ;207
	DB	32,16,16,00                  ;208
	DB	32,15,15,00                  ;209
	DB	32,14,14,00                  ;210
	DB	32,13,13,00                  ;211
	DB	32,12,12,00                  ;212
	DB	32,11,11,00                  ;213
	DB	32,10,10,00                  ;214
	DB	32,09,09,00                  ;215
	DB	32,08,08,00                  ;216
	DB	32,07,07,00                  ;217
	DB	32,06,06,00                  ;218
	DB	32,05,05,00                  ;219
	DB	32,04,04,00                  ;220
	DB	32,03,03,00                  ;221
	DB	32,02,02,00                  ;222
	DB	32,01,01,00                  ;223
	DB	32,00,00,00                  ;224
	DB	0FFH                         ;225 END

.ENDIF  ; C_COLOR_TABLE_EN
                                     

.IF ( C_3LED_TABLE0_EN .EQ. 1 )
T3LED_TABLE0:
	DB	00,	00,	00,	00
	DB	01,	00,	00,	00
	DB	02,	00,	00,	00
	DB	03,	00,	00,	00
	DB	04,	00,	00,	00
	DB	05,	00,	00,	00
	DB	06,	00,	00,	00
	DB	07,	00,	00,	00
	DB	08,	00,	00,	00
	DB	09,	00,	00,	00
	DB	10,	00,	00,	00
	DB	11,	00,	00,	00
	DB	12,	00,	00,	00
	DB	13,	00,	00,	00
	DB	14,	00,	00,	00
	DB	15,	00,	00,	00
	DB	16,	00,	00,	00
	DB	17,	00,	00,	00
	DB	18,	00,	00,	00
	DB	19,	00,	00,	00
	DB	20,	00,	00,	00
	DB	21,	00,	00,	00
	DB	22,	00,	00,	00
	DB	23,	00,	00,	00
	DB	24,	00,	00,	00
	DB	25,	00,	00,	00
	DB	26,	00,	00,	00
	DB	27,	00,	00,	00
	DB	28,	00,	00,	00
	DB	29,	00,	00,	00
	DB	30,	00,	00,	00
	DB	31,	00,	00,	00
	DB	32,	00,	00,	00
	DB	31,	00,	00,	00
	DB	30,	00,	00,	00
	DB	29,	00,	00,	00
	DB	28,	00,	00,	00
	DB	27,	00,	00,	00
	DB	26,	00,	00,	00
	DB	25,	00,	00,	00
	DB	24,	00,	00,	00
	DB	23,	00,	00,	00
	DB	22,	00,	00,	00
	DB	21,	00,	00,	00
	DB	20,	00,	00,	00
	DB	19,	00,	00,	00
	DB	18,	00,	00,	00
	DB	17,	00,	00,	00
	DB	16,	00,	00,	00
	DB	15,	00,	00,	00
	DB	14,	00,	00,	00
	DB	13,	00,	00,	00
	DB	12,	00,	00,	00
	DB	11,	00,	00,	00
	DB	10,	00,	00,	00
	DB	09,	00,	00,	00
	DB	08,	01,	00,	00
	DB	07,	02,	00,	00
	DB	06,	03,	00,	00
	DB	05,	04,	00,	00
	DB	04,	05,	00,	00
	DB	03,	06,	00,	00
	DB	02,	07,	00,	00
	DB	01,	08,	00,	00
	DB	00,	09,	00,	00
	DB	00,	10,	00,	00
	DB	00,	11,	00,	00
	DB	00,	12,	00,	00
	DB	00,	13,	00,	00
	DB	00,	14,	00,	00
	DB	00,	15,	00,	00
	DB	00,	16,	00,	00
	DB	00,	17,	00,	00
	DB	00,	18,	00,	00
	DB	00,	19,	00,	00
	DB	00,	20,	00,	00
	DB	00,	21,	00,	00
	DB	00,	22,	00,	00
	DB	00,	23,	00,	00
	DB	00,	24,	00,	00
	DB	00,	25,	00,	00
	DB	00,	26,	00,	00
	DB	00,	27,	00,	00
	DB	00,	28,	00,	00
	DB	00,	29,	00,	00
	DB	00,	30,	00,	00
	DB	00,	31,	00,	00
	DB	00,	32,	00,	00
	DB	00,	31,	00,	00
	DB	00,	30,	00,	00
	DB	00,	29,	00,	00
	DB	00,	28,	00,	00
	DB	00,	27,	00,	00
	DB	00,	26,	00,	00
	DB	00,	25,	00,	00
	DB	00,	24,	00,	00
	DB	00,	23,	00,	00
	DB	00,	22,	00,	00
	DB	00,	21,	00,	00
	DB	00,	20,	00,	00
	DB	00,	19,	00,	00
	DB	00,	18,	00,	00
	DB	00,	17,	00,	00
	DB	00,	16,	00,	00
	DB	00,	15,	00,	00
	DB	00,	14,	00,	00
	DB	00,	13,	00,	00
	DB	00,	12,	00,	00
	DB	00,	11,	00,	00
	DB	00,	10,	00,	00
	DB	00,	09,	00,	00
	DB	00,	08,	01,	00
	DB	00,	07,	02,	00
	DB	00,	06,	03,	00
	DB	00,	05,	04,	00
	DB	00,	04,	05,	00
	DB	00,	03,	06,	00
	DB	00,	02,	07,	00
	DB	00,	01,	08,	00
	DB	00,	00,	09,	00
	DB	00,	00,	10,	00
	DB	00,	00,	11,	00
	DB	00,	00,	12,	00
	DB	00,	00,	13,	00
	DB	00,	00,	14,	00
	DB	00,	00,	15,	00
	DB	00,	00,	16,	00
	DB	00,	00,	17,	00
	DB	00,	00,	18,	00
	DB	00,	00,	19,	00
	DB	00,	00,	20,	00
	DB	00,	00,	21,	00
	DB	00,	00,	22,	00
	DB	00,	00,	23,	00
	DB	00,	00,	24,	00
	DB	00,	00,	25,	00
	DB	00,	00,	26,	00
	DB	00,	00,	27,	00
	DB	00,	00,	28,	00
	DB	00,	00,	29,	00
	DB	00,	00,	30,	00
	DB	00,	00,	31,	00
	DB	00,	00,	32,	00
	DB	00,	00,	31,	00
	DB	00,	00,	30,	00
	DB	00,	00,	29,	00
	DB	00,	00,	28,	00
	DB	00,	00,	27,	00
	DB	00,	00,	26,	00
	DB	00,	00,	25,	00
	DB	00,	00,	24,	00
	DB	00,	00,	23,	00
	DB	00,	00,	22,	00
	DB	00,	00,	21,	00
	DB	00,	00,	20,	00
	DB	00,	00,	19,	00
	DB	00,	00,	18,	00
	DB	00,	00,	17,	00
	DB	00,	00,	16,	00
	DB	00,	00,	15,	00
	DB	00,	00,	14,	00
	DB	00,	00,	13,	00
	DB	00,	00,	12,	00
	DB	00,	00,	11,	00
	DB	00,	00,	10,	00
	DB	00,	00,	09,	00
	DB	01,	00,	08,	00
	DB	02,	00,	07,	00
	DB	03,	00,	06,	00
	DB	04,	00,	05,	00
	DB	05,	00,	04,	00
	DB	06,	00,	03,	00
	DB	07,	00,	02,	00
	DB	08,	00,	01,	00
	DB	09,	00,	00,	00;175
	DB	0FFH

.ENDIF  ; C_3LED_TABLE_EN
