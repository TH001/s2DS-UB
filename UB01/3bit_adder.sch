# File saved with Nlview 6.8.5  2018-01-30 bk=1.4354 VDI=40 GEI=35 GUI=JA:1.6 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new nbitAddierer work:nbitAddierer:NOFILE -nosplit
load symbol Volladdierer2 work:Volladdierer2:NOFILE HIERBOX pin AV input.left pin BV input.left pin SV output.right pin UV output.right pin U_INV input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol Volladdierer2 work:abstract:NOFILE HIERBOX pin AV input.left pin BV input.left pin SV output.right pin UV output.right pin U_INV input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol Halbaddierer work:Halbaddierer:NOFILE HIERBOX pin A input.left pin B input.left pin S output.right pin U output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol Halbaddierer work:abstract:NOFILE HIERBOX pin A input.left pin B input.left pin S output.right pin U output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_XOR work XOR pin I0 input pin I1 input pin O output fillcolor 1
load port U_INn input -pg 1 -y 100
load port Un output -pg 1 -y 550
load portBus An input [2:0] -attr @name An[2:0] -pg 1 -y 60
load portBus Sn output [2:0] -attr @name Sn[2:0] -pg 1 -y 300
load portBus Bn input [2:0] -attr @name Bn[2:0] -pg 1 -y 80
load inst schleife[0].bitspace Volladdierer2 work:Volladdierer2:NOFILE -autohide -attr @cell(#000000) Volladdierer2 -pg 1 -lvl 1 -y 70
load inst schleife[0].bitspace|ADD Halbaddierer work:Halbaddierer:NOFILE -hier schleife[0].bitspace -autohide -attr @name ADD -attr @cell(#000000) Halbaddierer -pg 1 -lvl 1 -y 170
load inst schleife[0].bitspace|UBR Halbaddierer work:abstract:NOFILE -hier schleife[0].bitspace -autohide -attr @name UBR -attr @cell(#000000) Halbaddierer -pg 1 -lvl 2 -y 100
load inst schleife[2].bitspace Volladdierer2 work:abstract:NOFILE -autohide -attr @cell(#000000) Volladdierer2 -pg 1 -lvl 2 -y 380
load inst schleife[2].bitspace|UBR Halbaddierer work:abstract:NOFILE -hier schleife[2].bitspace -autohide -attr @name UBR -attr @cell(#000000) Halbaddierer -pg 1 -lvl 2 -y 410
load inst schleife[2].bitspace|ADD Halbaddierer work:abstract:NOFILE -hier schleife[2].bitspace -autohide -attr @name ADD -attr @cell(#000000) Halbaddierer -pg 1 -lvl 1 -y 480
load inst schleife[2].bitspace|ADD|S_i RTL_AND work -hier schleife[2].bitspace|ADD -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 490
load inst schleife[1].bitspace Volladdierer2 work:abstract:NOFILE -autohide -attr @cell(#000000) Volladdierer2 -pg 1 -lvl 1 -y 470
load inst schleife[1].bitspace|ADD Halbaddierer work:abstract:NOFILE -hier schleife[1].bitspace -autohide -attr @name ADD -attr @cell(#000000) Halbaddierer -pg 1 -lvl 1 -y 570
load inst schleife[1].bitspace|ADD|S_i RTL_AND work -hier schleife[1].bitspace|ADD -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 580
load inst schleife[1].bitspace|UBR Halbaddierer work:abstract:NOFILE -hier schleife[1].bitspace -autohide -attr @name UBR -attr @cell(#000000) Halbaddierer -pg 1 -lvl 2 -y 500
load inst schleife[1].bitspace|UBR|S_i RTL_AND work -hier schleife[1].bitspace|UBR -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 510
load inst schleife[2].bitspace|UBR|S_i RTL_AND work -hier schleife[2].bitspace|UBR -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 420
load inst schleife[0].bitspace|UBR|S_i RTL_AND work -hier schleife[0].bitspace|UBR -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 110
load inst schleife[0].bitspace|UBR|U_i RTL_XOR work -hier schleife[0].bitspace|UBR -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 180
load inst schleife[1].bitspace|UV_i RTL_OR work -hier schleife[1].bitspace -attr @name UV_i -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -y 640
load inst schleife[2].bitspace|UBR|U_i RTL_XOR work -hier schleife[2].bitspace|UBR -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 490
load inst schleife[1].bitspace|UBR|U_i RTL_XOR work -hier schleife[1].bitspace|UBR -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 580
load inst schleife[1].bitspace|ADD|U_i RTL_XOR work -hier schleife[1].bitspace|ADD -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 650
load inst schleife[0].bitspace|ADD|S_i RTL_AND work -hier schleife[0].bitspace|ADD -attr @name S_i -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -y 180
load inst schleife[2].bitspace|UV_i RTL_OR work -hier schleife[2].bitspace -attr @name UV_i -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -y 550
load inst schleife[0].bitspace|UV_i RTL_OR work -hier schleife[0].bitspace -attr @name UV_i -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -y 240
load inst schleife[2].bitspace|ADD|U_i RTL_XOR work -hier schleife[2].bitspace|ADD -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 560
load inst schleife[0].bitspace|ADD|U_i RTL_XOR work -hier schleife[0].bitspace|ADD -attr @name U_i -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -y 250
load net An[2] -attr @rip(#000000) An[2] -port An[2] -pin schleife[2].bitspace AV
load net C_2 -pin schleife[1].bitspace UV -pin schleife[2].bitspace U_INV
netloc C_2 1 1 1 1090
load net Sn[0] -attr @rip(#000000) 0 -port Sn[0] -pin schleife[0].bitspace SV
load net schleife[0].bitspace|ADD|B -attr @name B -hierPin schleife[0].bitspace|ADD B -pin schleife[0].bitspace|ADD|S_i I1 -pin schleife[0].bitspace|ADD|U_i I1
netloc schleife[0].bitspace|ADD|B 1 0 1 260
load net schleife[1].bitspace|AV -attr @name AV -hierPin schleife[1].bitspace AV -pin schleife[1].bitspace|ADD A
netloc schleife[1].bitspace|AV 1 0 1 180
load net schleife[1].bitspace|UV -attr @name UV -hierPin schleife[1].bitspace UV -pin schleife[1].bitspace|UV_i O
netloc schleife[1].bitspace|UV 1 3 1 N
load net schleife[1].bitspace|U_out -attr @name U_out -pin schleife[1].bitspace|UBR U -pin schleife[1].bitspace|UV_i I0
netloc schleife[1].bitspace|U_out 1 2 1 840
load net schleife[1].bitspace|UBR|B -attr @name B -hierPin schleife[1].bitspace|UBR B -pin schleife[1].bitspace|UBR|S_i I1 -pin schleife[1].bitspace|UBR|U_i I1
netloc schleife[1].bitspace|UBR|B 1 0 1 600
load net schleife[2].bitspace|U_INV -attr @name U_INV -hierPin schleife[2].bitspace U_INV -pin schleife[2].bitspace|UBR B
netloc schleife[2].bitspace|U_INV 1 0 2 NJ 410 1530
load net schleife[1].bitspace|U_INV -attr @name U_INV -hierPin schleife[1].bitspace U_INV -pin schleife[1].bitspace|UBR B
netloc schleife[1].bitspace|U_INV 1 0 2 NJ 500 500
load net schleife[2].bitspace|ADD|A -attr @name A -hierPin schleife[2].bitspace|ADD A -pin schleife[2].bitspace|ADD|S_i I0 -pin schleife[2].bitspace|ADD|U_i I0
netloc schleife[2].bitspace|ADD|A 1 0 1 1310
load net U_INn -port U_INn -pin schleife[0].bitspace U_INV
netloc U_INn 1 0 1 NJ
load net schleife[2].bitspace|U -attr @name U -pin schleife[2].bitspace|ADD U -pin schleife[2].bitspace|UV_i I1
netloc schleife[2].bitspace|U 1 1 2 N 560 NJ
load net schleife[2].bitspace|ADD|B -attr @name B -hierPin schleife[2].bitspace|ADD B -pin schleife[2].bitspace|ADD|S_i I1 -pin schleife[2].bitspace|ADD|U_i I1
netloc schleife[2].bitspace|ADD|B 1 0 1 1290
load net schleife[2].bitspace|UBR|S -attr @name S -hierPin schleife[2].bitspace|UBR S -pin schleife[2].bitspace|UBR|S_i O
netloc schleife[2].bitspace|UBR|S 1 1 1 N
load net schleife[1].bitspace|ADD|A -attr @name A -hierPin schleife[1].bitspace|ADD A -pin schleife[1].bitspace|ADD|S_i I0 -pin schleife[1].bitspace|ADD|U_i I0
netloc schleife[1].bitspace|ADD|A 1 0 1 280
load net schleife[2].bitspace|BV -attr @name BV -hierPin schleife[2].bitspace BV -pin schleife[2].bitspace|ADD B
netloc schleife[2].bitspace|BV 1 0 1 1190
load net An[1] -attr @rip(#000000) An[1] -port An[1] -pin schleife[1].bitspace AV
load net Sn[1] -attr @rip(#000000) 1 -port Sn[1] -pin schleife[1].bitspace SV
load net Un -port Un -pin schleife[2].bitspace UV
netloc Un 1 2 1 NJ
load net schleife[0].bitspace|ADD|S -attr @name S -hierPin schleife[0].bitspace|ADD S -pin schleife[0].bitspace|ADD|S_i O
netloc schleife[0].bitspace|ADD|S 1 1 1 N
load net schleife[1].bitspace|SV -attr @name SV -hierPin schleife[1].bitspace SV -pin schleife[1].bitspace|UBR S
netloc schleife[1].bitspace|SV 1 2 2 N 510 NJ
load net schleife[1].bitspace|ADD|B -attr @name B -hierPin schleife[1].bitspace|ADD B -pin schleife[1].bitspace|ADD|S_i I1 -pin schleife[1].bitspace|ADD|U_i I1
netloc schleife[1].bitspace|ADD|B 1 0 1 260
load net schleife[1].bitspace|UBR|S -attr @name S -hierPin schleife[1].bitspace|UBR S -pin schleife[1].bitspace|UBR|S_i O
netloc schleife[1].bitspace|UBR|S 1 1 1 N
load net schleife[2].bitspace|U_out -attr @name U_out -pin schleife[2].bitspace|UBR U -pin schleife[2].bitspace|UV_i I0
netloc schleife[2].bitspace|U_out 1 2 1 1870
load net schleife[2].bitspace|UBR|U -attr @name U -hierPin schleife[2].bitspace|UBR U -pin schleife[2].bitspace|UBR|U_i O
netloc schleife[2].bitspace|UBR|U 1 1 1 N
load net Bn[1] -attr @rip(#000000) Bn[1] -port Bn[1] -pin schleife[1].bitspace BV
load net schleife[0].bitspace|UBR|A -attr @name A -hierPin schleife[0].bitspace|UBR A -pin schleife[0].bitspace|UBR|S_i I0 -pin schleife[0].bitspace|UBR|U_i I0
netloc schleife[0].bitspace|UBR|A 1 0 1 620
load net schleife[1].bitspace|A_inter -attr @name A_inter -pin schleife[1].bitspace|ADD S -pin schleife[1].bitspace|UBR A
netloc schleife[1].bitspace|A_inter 1 1 1 520
load net schleife[1].bitspace|U -attr @name U -pin schleife[1].bitspace|ADD U -pin schleife[1].bitspace|UV_i I1
netloc schleife[1].bitspace|U 1 1 2 N 650 NJ
load net An[0] -attr @rip(#000000) An[0] -port An[0] -pin schleife[0].bitspace AV
load net schleife[0].bitspace|UV -attr @name UV -hierPin schleife[0].bitspace UV -pin schleife[0].bitspace|UV_i O
netloc schleife[0].bitspace|UV 1 3 1 N
load net schleife[0].bitspace|U_out -attr @name U_out -pin schleife[0].bitspace|UBR U -pin schleife[0].bitspace|UV_i I0
netloc schleife[0].bitspace|U_out 1 2 1 840
load net schleife[0].bitspace|ADD|U -attr @name U -hierPin schleife[0].bitspace|ADD U -pin schleife[0].bitspace|ADD|U_i O
netloc schleife[0].bitspace|ADD|U 1 1 1 N
load net schleife[0].bitspace|UBR|B -attr @name B -hierPin schleife[0].bitspace|UBR B -pin schleife[0].bitspace|UBR|S_i I1 -pin schleife[0].bitspace|UBR|U_i I1
netloc schleife[0].bitspace|UBR|B 1 0 1 600
load net schleife[1].bitspace|UBR|U -attr @name U -hierPin schleife[1].bitspace|UBR U -pin schleife[1].bitspace|UBR|U_i O
netloc schleife[1].bitspace|UBR|U 1 1 1 N
load net schleife[2].bitspace|UV -attr @name UV -hierPin schleife[2].bitspace UV -pin schleife[2].bitspace|UV_i O
netloc schleife[2].bitspace|UV 1 3 1 N
load net schleife[2].bitspace|ADD|S -attr @name S -hierPin schleife[2].bitspace|ADD S -pin schleife[2].bitspace|ADD|S_i O
netloc schleife[2].bitspace|ADD|S 1 1 1 N
load net schleife[2].bitspace|AV -attr @name AV -hierPin schleife[2].bitspace AV -pin schleife[2].bitspace|ADD A
netloc schleife[2].bitspace|AV 1 0 1 1210
load net Sn[2] -attr @rip(#000000) 2 -port Sn[2] -pin schleife[2].bitspace SV
load net schleife[0].bitspace|BV -attr @name BV -hierPin schleife[0].bitspace BV -pin schleife[0].bitspace|ADD B
netloc schleife[0].bitspace|BV 1 0 1 160
load net schleife[1].bitspace|ADD|S -attr @name S -hierPin schleife[1].bitspace|ADD S -pin schleife[1].bitspace|ADD|S_i O
netloc schleife[1].bitspace|ADD|S 1 1 1 N
load net schleife[2].bitspace|A_inter -attr @name A_inter -pin schleife[2].bitspace|ADD S -pin schleife[2].bitspace|UBR A
netloc schleife[2].bitspace|A_inter 1 1 1 1550
load net schleife[2].bitspace|ADD|U -attr @name U -hierPin schleife[2].bitspace|ADD U -pin schleife[2].bitspace|ADD|U_i O
netloc schleife[2].bitspace|ADD|U 1 1 1 N
load net Bn[2] -attr @rip(#000000) Bn[2] -port Bn[2] -pin schleife[2].bitspace BV
load net schleife[0].bitspace|UBR|S -attr @name S -hierPin schleife[0].bitspace|UBR S -pin schleife[0].bitspace|UBR|S_i O
netloc schleife[0].bitspace|UBR|S 1 1 1 N
load net schleife[1].bitspace|ADD|U -attr @name U -hierPin schleife[1].bitspace|ADD U -pin schleife[1].bitspace|ADD|U_i O
netloc schleife[1].bitspace|ADD|U 1 1 1 N
load net schleife[2].bitspace|UBR|A -attr @name A -hierPin schleife[2].bitspace|UBR A -pin schleife[2].bitspace|UBR|S_i I0 -pin schleife[2].bitspace|UBR|U_i I0
netloc schleife[2].bitspace|UBR|A 1 0 1 1650
load net schleife[0].bitspace|AV -attr @name AV -hierPin schleife[0].bitspace AV -pin schleife[0].bitspace|ADD A
netloc schleife[0].bitspace|AV 1 0 1 180
load net schleife[0].bitspace|A_inter -attr @name A_inter -pin schleife[0].bitspace|ADD S -pin schleife[0].bitspace|UBR A
netloc schleife[0].bitspace|A_inter 1 1 1 520
load net schleife[0].bitspace|U_INV -attr @name U_INV -hierPin schleife[0].bitspace U_INV -pin schleife[0].bitspace|UBR B
netloc schleife[0].bitspace|U_INV 1 0 2 NJ 100 500
load net schleife[1].bitspace|BV -attr @name BV -hierPin schleife[1].bitspace BV -pin schleife[1].bitspace|ADD B
netloc schleife[1].bitspace|BV 1 0 1 160
load net schleife[2].bitspace|SV -attr @name SV -hierPin schleife[2].bitspace SV -pin schleife[2].bitspace|UBR S
netloc schleife[2].bitspace|SV 1 2 2 N 420 NJ
load net schleife[2].bitspace|UBR|B -attr @name B -hierPin schleife[2].bitspace|UBR B -pin schleife[2].bitspace|UBR|S_i I1 -pin schleife[2].bitspace|UBR|U_i I1
netloc schleife[2].bitspace|UBR|B 1 0 1 1630
load net Bn[0] -attr @rip(#000000) Bn[0] -port Bn[0] -pin schleife[0].bitspace BV
load net C_1 -pin schleife[0].bitspace UV -pin schleife[1].bitspace U_INV
netloc C_1 1 0 2 60 350 1050
load net schleife[0].bitspace|SV -attr @name SV -hierPin schleife[0].bitspace SV -pin schleife[0].bitspace|UBR S
netloc schleife[0].bitspace|SV 1 2 2 N 110 NJ
load net schleife[0].bitspace|U -attr @name U -pin schleife[0].bitspace|ADD U -pin schleife[0].bitspace|UV_i I1
netloc schleife[0].bitspace|U 1 1 2 N 250 NJ
load net schleife[0].bitspace|ADD|A -attr @name A -hierPin schleife[0].bitspace|ADD A -pin schleife[0].bitspace|ADD|S_i I0 -pin schleife[0].bitspace|ADD|U_i I0
netloc schleife[0].bitspace|ADD|A 1 0 1 280
load net schleife[0].bitspace|UBR|U -attr @name U -hierPin schleife[0].bitspace|UBR U -pin schleife[0].bitspace|UBR|U_i O
netloc schleife[0].bitspace|UBR|U 1 1 1 N
load net schleife[1].bitspace|UBR|A -attr @name A -hierPin schleife[1].bitspace|UBR A -pin schleife[1].bitspace|UBR|S_i I0 -pin schleife[1].bitspace|UBR|U_i I0
netloc schleife[1].bitspace|UBR|A 1 0 1 620
load netBundle @An 3 An[2] An[1] An[0] -autobundled
netbloc @An 1 0 2 40 370 1050
load netBundle @Sn 3 Sn[2] Sn[1] Sn[0] -autobundled
netbloc @Sn 1 1 2 1070 300 2080
load netBundle @Bn 3 Bn[2] Bn[1] Bn[0] -autobundled
netbloc @Bn 1 0 2 20 390 1050
levelinfo -pg 1 0 130 1160 2100 -top 0 -bot 750
levelinfo -hier schleife[0].bitspace * 230 570 890 *
levelinfo -hier schleife[1].bitspace * 230 570 890 *
levelinfo -hier schleife[2].bitspace * 1260 1600 1920 *
levelinfo -hier schleife[0].bitspace|ADD * 330 *
levelinfo -hier schleife[0].bitspace|UBR * 670 *
levelinfo -hier schleife[1].bitspace|ADD * 330 *
levelinfo -hier schleife[1].bitspace|UBR * 670 *
levelinfo -hier schleife[2].bitspace|ADD * 1360 *
levelinfo -hier schleife[2].bitspace|UBR * 1700 *
show
fullfit
#
# initialize ictrl to current module nbitAddierer work:nbitAddierer:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
