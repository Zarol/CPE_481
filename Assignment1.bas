5 S=54272

10 FORL=STOS+24:POKEL,0:NEXT

20 POKES+5,9:POKES+3,0

30 POKES+24,15

40 READHF,LF,DR

50 IFHF<0THENEND

60 POKES+1,HF:POKES,LF

70 POKES+4,129

80 FORT=ITODR:NEXT

90 POKES+4,128:FORT=1TO50:NEXT

100 GOTO40

110 DATA25,177,250,28,214,250

120 DATA25,177,250,25,177,250

130 DATA25,177,125,28,214,125

140 DATA32,94,750,25,177,250

150 DATA28,214,250,19,63,250

160 DATA19,63,250,19,63,250

170 DATA21,154,63,24,63,63

180 DATA25,177,250,24,63,125

190 DATA25,177,250,28,214,250

200 DATA25,177,250,25,177,250

210 DATA25,177,125,28,214,125

220 DATA32,94,750,25,177,250

240 DATA28,214,250,19,63,250

260 DATA19,63,250,19,63,250

280 DATA21,154,63,24,63,63

300 DATA25,177,250,24,63,125

310 DATA19,63,250,-1,-1,-1