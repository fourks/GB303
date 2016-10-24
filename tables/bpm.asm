setbpm:
  ld     a,(BPM)
  sub    6
  ld     d,0
  ld     e,a
  ld     hl,lut_bpm
  sla    e
  rl     d			;*2
  add    hl,de
  ldi    a,(hl)
  ldh    ($06),a		;TMA (timer modulo)
  ;ldh    ($05),a
  ld     a,(hl)
  ld     (BPM_MATCH),a
  ret

lut_bpm:
  .db 96,64 ;6 BPM
  .db 125,67 ;7 BPM
  .db 16,32 ;8 BPM
  .db 61,35 ;9 BPM
  .db 64,32 ;10 BPM
  .db 109,38 ;11 BPM
  .db 96,32 ;12 BPM
  .db 117,34 ;13 BPM
  .db 179,57 ;14 BPM
  .db 128,32 ;15 BPM
  .db 16,16 ;16 BPM
  .db 117,26 ;17 BPM
  .db 12,14 ;18 BPM
  .db 25,14 ;19 BPM
  .db 64,16 ;20 BPM
  .db 102,19 ;21 BPM
  .db 109,19 ;22 BPM
  .db 89,16 ;23 BPM
  .db 96,16 ;24 BPM
  .db 67,13 ;25 BPM
  .db 117,17 ;26 BPM
  .db 81,13 ;27 BPM
  .db 127,17 ;28 BPM
  .db 93,13 ;29 BPM
  .db 128,16 ;30 BPM
  .db 36,9 ;31 BPM
  .db 16,8 ;32 BPM
  .db 123,14 ;33 BPM
  .db 117,13 ;34 BPM
  .db 61,9 ;35 BPM
  .db 12,7 ;36 BPM
  .db 105,11 ;37 BPM
  .db 25,7 ;38 BPM
  .db 31,7 ;39 BPM
  .db 64,8 ;40 BPM
  .db 42,7 ;41 BPM
  .db 179,19 ;42 BPM
  .db 18,6 ;43 BPM
  .db 129,11 ;44 BPM
  .db 61,7 ;45 BPM
  .db 89,8 ;46 BPM
  .db 38,6 ;47 BPM
  .db 96,8 ;48 BPM
  .db 47,6 ;49 BPM
  .db 10,5 ;50 BPM
  .db 251,241 ;51 BPM
  .db 59,6 ;52 BPM
  .db 237,61 ;53 BPM
  .db 189,17 ;54 BPM
  .db 170,13 ;55 BPM
  .db 73,6 ;56 BPM
  .db 102,7 ;57 BPM
  .db 44,5 ;58 BPM
  .db 48,5 ;59 BPM
  .db 128,8 ;60 BPM
  .db 203,19 ;61 BPM
  .db 58,5 ;62 BPM
  .db 61,5 ;63 BPM
  .db 16,4 ;64 BPM
  .db 67,5 ;65 BPM
  .db 123,7 ;66 BPM
  .db 249,131 ;67 BPM
  .db 30,4 ;68 BPM
  .db 78,5 ;69 BPM
  .db 37,4 ;70 BPM
  .db 83,5 ;71 BPM
  .db 134,7 ;72 BPM
  .db 227,29 ;73 BPM
  .db 90,5 ;74 BPM
  .db 165,9 ;75 BPM
  .db 54,4 ;76 BPM
  .db 123,6 ;77 BPM
  .db 59,4 ;78 BPM
  .db 145,7 ;79 BPM
  .db 64,4 ;80 BPM
  .db 187,11 ;81 BPM
  .db 149,7 ;82 BPM
  .db 71,4 ;83 BPM
  .db 213,17 ;84 BPM
  .db 15,3 ;85 BPM
  .db 18,3 ;86 BPM
  .db 155,7 ;87 BPM
  .db 23,3 ;88 BPM
  .db 26,3 ;89 BPM
  .db 194,11 ;90 BPM
  .db 31,3 ;91 BPM
  .db 89,4 ;92 BPM
  .db 36,3 ;93 BPM
  .db 38,3 ;94 BPM
  .db 218,17 ;95 BPM
  .db 96,4 ;96 BPM
  .db 253,211 ;97 BPM
  .db 47,3 ;98 BPM
  .db 49,3 ;99 BPM
  .db 133,5 ;100 BPM
  .db 104,4 ;101 BPM
  .db 242,43 ;102 BPM
  .db 57,3 ;103 BPM
  .db 59,3 ;104 BPM
  .db 61,3 ;105 BPM
  .db 236,29 ;106 BPM
  .db 174,7 ;107 BPM
  .db 114,4 ;108 BPM
  .db 68,3 ;109 BPM
  .db 213,13 ;110 BPM
  .db 177,7 ;111 BPM
  .db 73,3 ;112 BPM
  .db 120,4 ;113 BPM
  .db 179,7 ;114 BPM
  .db 250,89 ;115 BPM
  .db 150,5 ;116 BPM
  .db 81,3 ;117 BPM
  .db 126,4 ;118 BPM
  .db 84,3 ;119 BPM
  .db 128,4 ;120 BPM
  .db 2,2 ;121 BPM
  .db 4,2 ;122 BPM
  .db 6,2 ;123 BPM
  .db 91,3 ;124 BPM
  .db 10,2 ;125 BPM
  .db 12,2 ;126 BPM
  .db 14,2 ;127 BPM
  .db 16,2 ;128 BPM
  .db 18,2 ;129 BPM
  .db 213,11 ;130 BPM
  .db 189,7 ;131 BPM
  .db 101,3 ;132 BPM
  .db 25,2 ;133 BPM
  .db 103,3 ;134 BPM
  .db 165,5 ;135 BPM
  .db 30,2 ;136 BPM
  .db 32,2 ;137 BPM
  .db 167,5 ;138 BPM
  .db 222,13 ;139 BPM
  .db 37,2 ;140 BPM
  .db 38,2 ;141 BPM
  .db 40,2 ;142 BPM
  .db 41,2 ;143 BPM
  .db 195,7 ;144 BPM
  .db 44,2 ;145 BPM
  .db 116,3 ;146 BPM
  .db 47,2 ;147 BPM
  .db 173,5 ;148 BPM
  .db 50,2 ;149 BPM
  .db 51,2 ;150 BPM
  .db 219,11 ;151 BPM
  .db 54,2 ;152 BPM
  .db 55,2 ;153 BPM
  .db 123,3 ;154 BPM
  .db 220,11 ;155 BPM
  .db 59,2 ;156 BPM
  .db 233,17 ;157 BPM
  .db 62,2 ;158 BPM
  .db 63,2 ;159 BPM
  .db 64,2 ;160 BPM
  .db 65,2 ;161 BPM
  .db 66,2 ;162 BPM
  .db 243,29 ;163 BPM
  .db 181,5 ;164 BPM
  .db 132,3 ;165 BPM
  .db 71,2 ;166 BPM
  .db 72,2 ;167 BPM
  .db 73,2 ;168 BPM
  .db 74,2 ;169 BPM
  .db 237,19 ;170 BPM
  .db 76,2 ;171 BPM
  .db 137,3 ;172 BPM
  .db 185,5 ;173 BPM
  .db 79,2 ;174 BPM
  .db 217,9 ;175 BPM
  .db 81,2 ;176 BPM
  .db 82,2 ;177 BPM
  .db 141,3 ;178 BPM
  .db 207,7 ;179 BPM
  .db 225,11 ;180 BPM
  .db 143,3 ;181 BPM
  .db 230,13 ;182 BPM
  .db 88,2 ;183 BPM
  .db 89,2 ;184 BPM
  .db 90,2 ;185 BPM
  .db 91,2 ;186 BPM
  .db 209,7 ;187 BPM
  .db 147,3 ;188 BPM
  .db 191,5 ;189 BPM
  .db 237,17 ;190 BPM
  .db 95,2 ;191 BPM
  .db 96,2 ;192 BPM
  .db 150,3 ;193 BPM
  .db 98,2 ;194 BPM
  .db 193,5 ;195 BPM
  .db 99,2 ;196 BPM
  .db 152,3 ;197 BPM
  .db 101,2 ;198 BPM
  .db 153,3 ;199 BPM
  .db 102,2 ;200 BPM
  .db 103,2 ;201 BPM
  .db 104,2 ;202 BPM
  .db 155,3 ;203 BPM
  .db 249,43 ;204 BPM
  .db 106,2 ;205 BPM
  .db 107,2 ;206 BPM
  .db 157,3 ;207 BPM
  .db 197,5 ;208 BPM
  .db 109,2 ;209 BPM
  .db 110,2 ;210 BPM
  .db 159,3 ;211 BPM
  .db 246,29 ;212 BPM
  .db 112,2 ;213 BPM
  .db 215,7 ;214 BPM
  .db 113,2 ;215 BPM
  .db 114,2 ;216 BPM
  .db 114,2 ;217 BPM
  .db 115,2 ;218 BPM
  .db 116,2 ;219 BPM
  .db 225,9 ;220 BPM
  .db 117,2 ;221 BPM
  .db 244,23 ;222 BPM
  .db 118,2 ;223 BPM
  .db 119,2 ;224 BPM
  .db 217,7 ;225 BPM
  .db 120,2 ;226 BPM
  .db 202,5 ;227 BPM
  .db 121,2 ;228 BPM
  .db 122,2 ;229 BPM
  .db 253,89 ;230 BPM
  .db 123,2 ;231 BPM
  .db 203,5 ;232 BPM
  .db 124,2 ;233 BPM
  .db 125,2 ;234 BPM
  .db 169,3 ;235 BPM
  .db 126,2 ;236 BPM
  .db 249,37 ;237 BPM
  .db 127,2 ;238 BPM
  .db 127,2 ;239 BPM
  .db 128,2 ;240 BPM
  .db 1,1 ;241 BPM
  .db 2,1 ;242 BPM
  .db 3,1 ;243 BPM
  .db 4,1 ;244 BPM
  .db 5,1 ;245 BPM
  .db 6,1 ;246 BPM
  .db 173,3 ;247 BPM
  .db 8,1 ;248 BPM
  .db 9,1 ;249 BPM
  .db 10,1 ;250 BPM
  .db 11,1 ;251 BPM
  .db 12,1 ;252 BPM
  .db 13,1 ;253 BPM
  .db 14,1 ;254 BPM
  .db 15,1 ;255 BPM