(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var648 0)
(declare-sort var2617 0)
(declare-sort var3264 0)
(declare-sort var1403 0)
(declare-sort var1838 0)
(declare-sort var2066 0)
(declare-sort var355 0)
(declare-sort var250 0)
(declare-sort var1531 0)
(declare-sort var1044 0)
(declare-sort var2191 0)
(declare-sort var3174 0)
(declare-sort var3566 0)
(declare-sort var2019 0)
(declare-sort var2078 0)
(declare-sort var2669 0)
(declare-sort var3755 0)
(declare-sort var19 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/564043682 (var648) Int)
(declare-fun sexpr/-1662368780 (var2617) var3264)
(declare-fun DECORATOR/-1804204285 (var2617) var1403)
(declare-fun QID/241515671 (var3264) var1403)
(declare-fun var1403_getSymbol/-1667894290 (var1403) var1838)
(declare-fun var1838_getText/-195748462 (var1838) String)
(declare-fun qualifier/564043682 (var648) var2066)
(declare-fun addLast/1864600108 (var2066 var355) void)
(declare-fun cast-from-String-to-var355 (String) var355)
(declare-fun nameEnd/626416749 (var2617) var1838)
(declare-fun hasTag/-2046867243 (var648 Bool) void)
(declare-fun var250-init () var250)
(declare-fun handlebars/564043682 (var648) var1531)
(declare-fun param/1375516446 (var3264) var1044)
(declare-fun params/-1187292865 (var648 var1044) var1044)
(declare-fun hash/1258247777 (var3264) var1044)
(declare-fun hash/-459617955 (var648 var1044) var2191)
(declare-fun blockParams/111942164 (var2617) var3174)
(declare-fun blockParams/-1449160185 (var648 var3174) var1044)
(declare-fun <init>/-1008510175 (var250 var1531 String Bool String var1044 var2191 var1044) void)
(declare-fun paramSize/-1588764717 (var3566) Int)
(declare-fun cast-from-var250-to-var3566 (var250) var3566)
(declare-fun source/564043682 (var648) var2019)
(declare-fun var2019_filename/-833487352 (var2019) String)
(declare-fun filename/-762062287 (var2078 String) var2078)
(declare-fun cast-from-var250-to-var2078 (var250) var2078)
(declare-fun var1838_getLine/1695299143 (var1838) Int)
(declare-fun var1838_getCharPositionInLine/-1512232701 (var1838) Int)
(declare-fun position/1553523794 (var2078 Int Int) var2078)
(declare-fun start/1874176084 (var2669) var1838)
(declare-fun cast-from-var2617-to-var2669 (var2617) var2669)
(declare-fun stop/1874176084 (var2669) var1838)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun startDelimiter/-2121265389 (var250 String) var250)
(declare-fun endDelimiter/1877473676 (var250 String) var250)
(declare-fun thenBody/626416749 (var2617) var3755)
(declare-fun visitBody/348329788 (var648 var3755) var19)
(declare-fun elseBlock/-228779620 (var2617) var1044)
(declare-fun var1044_iterator/-912451715 (var1044) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun removeLast/1195514639 (var2066) var355)
(declare-const null-var648 var648)
(declare-const null-var2617 var2617)
(declare-const null-var1403 var1403)
(declare-const null-var19 var19)
(declare-const var1621 var648) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var1621 null-var648)))
(declare-const var2609 var2617) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$BlockContext 
(assert (not (= var2609 null-var2617)))
(define-const var755 Int (level/564043682 var1621)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> 
(define-const var65 Int (+ var755 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1621!1 var648)
(assert (not (= var1621!1 null-var648)))
(assert (= (level/564043682 var1621!1) var65)) ; Statement: r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1 
(assert true)
(define-const var2647 var3264 (sexpr/-1662368780 var2609)) ; Statement: r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>() 
(assert true)
(define-const var2952 var1403 (DECORATOR/-1804204285 var2609)) ; Statement: $r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode DECORATOR()>() 
 ; Statement: if $r3 == null goto $z6 = 0 
(assert (= var2952 null-var1403)) ; Cond: $r3 == null 
(define-const var285 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var3812 Bool var285) ; Statement: z0 = $z6 
(assert true)
(define-const var3134 var1403 (QID/241515671 var2647)) ; Statement: $r4 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>() 
(define-const var2344 var1838 (var1403_getSymbol/-1667894290 var3134)) ; Statement: $r70 = interfaceinvoke $r4.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(define-const var2574 String (var1838_getText/-195748462 var2344)) ; Statement: $r71 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var2410 var2066 (qualifier/564043682 var1621!1)) ; Statement: $r5 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier> 
(assert true)
;(assert (addLast/1864600108 var2410 (cast-from-String-to-var355 var2574))) ; Statement: virtualinvoke $r5.<java.util.LinkedList: void addLast(java.lang.Object)>($r71) 

(declare-const var2410!1 var2066)
(declare-const var2574!1 String)
(define-const var671 var1838 (nameEnd/626416749 var2609)) ; Statement: $r6 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd> 
(define-const var1984 String (var1838_getText/-195748462 var671)) ; Statement: $r72 = interfaceinvoke $r6.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var955 Bool (= var2574!1 var1984)) ; Statement: $z1 = virtualinvoke $r71.<java.lang.String: boolean equals(java.lang.Object)>($r72) 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 
(assert (not (= (ite var955 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (hasTag/-2046867243 var1621!1 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1) 

(declare-const var1621!2 var648)
(declare-const var1993 Int)
 ; Statement: if z0 == 0 goto $r7 = new com.github.jknack.handlebars.internal.Block 
(assert (= (ite var3812 1 0) 0)) ; Cond: z0 == 0 
(define-const var3810 var250 var250-init) ; Statement: $r7 = new com.github.jknack.handlebars.internal.Block 
(define-const var3638 var1531 (handlebars/564043682 var1621!2)) ; Statement: $r8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars> 
(assert true)
(define-const var2824 var1044 (param/1375516446 var2647)) ; Statement: $r9 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>() 
(assert true)
(define-const var3360 var1044 (params/-1187292865 var1621!2 var2824)) ; Statement: $r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r9) 
(assert true)
(define-const var2405 var1044 (hash/1258247777 var2647)) ; Statement: $r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>() 
(assert true)
(define-const var335 var2191 (hash/-459617955 var1621!2 var2405)) ; Statement: $r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r10) 
(assert true)
(define-const var3281 var3174 (blockParams/111942164 var2609)) ; Statement: $r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>() 
(assert true)
(define-const var1087 var1044 (blockParams/-1449160185 var1621!2 var3281)) ; Statement: $r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11) 
(assert true)
;(assert (<init>/-1008510175 var3810 var3638 var2574!1 (ite (= 1 0) true false) "#" var3360 var335 var1087)) ; Statement: specialinvoke $r7.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r8, $r71, 0, "#", $r14, $r13, $r12) 

(declare-const var3810!1 var250)
(declare-const var3638!1 var1531)
(declare-const var2574!2 String)
(declare-const var1934 Int)
(declare-const var2583 String)
(declare-const var3360!1 var1044)
(declare-const var335!1 var2191)
(declare-const var1087!1 var1044)
(define-const var3902 var250 var3810!1) ; Statement: r73 = $r7 
(assert true) ; Non Conditional
(define-const var1032 Int (paramSize/-1588764717 (cast-from-var250-to-var3566 var3902))) ; Statement: $i2 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize> 
 ; Statement: if $i2 <= 0 goto $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(assert (<= var1032 0)) ; Cond: $i2 <= 0 
(define-const var2125 var2019 (source/564043682 var1621!2)) ; Statement: $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source> 
(define-const var1743 String (var2019_filename/-833487352 var2125)) ; Statement: $r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>() 
(assert true)
;(assert (filename/-762062287 (cast-from-var250-to-var2078 var3902) var1743)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16) 

(declare-const var3902!1 var250)
(declare-const var1743!1 String)
(define-const var418 Int (var1838_getLine/1695299143 var2344)) ; Statement: $i4 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(define-const var1301 Int (var1838_getCharPositionInLine/-1512232701 var2344)) ; Statement: $i3 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
;(assert (position/1553523794 (cast-from-var250-to-var2078 var3902!1) var418 var1301)) ; Statement: virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3) 

(declare-const var3902!2 var250)
(declare-const var418!1 Int)
(declare-const var1301!1 Int)
(define-const var3484 var1838 (start/1874176084 (cast-from-var2617-to-var2669 var2609))) ; Statement: $r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token start> 
(define-const var1050 String (var1838_getText/-195748462 var3484)) ; Statement: $r54 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(define-const var14 var1838 (stop/1874176084 (cast-from-var2617-to-var2669 var2609))) ; Statement: $r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token stop> 
(define-const var3696 String (var1838_getText/-195748462 var14)) ; Statement: $r55 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var1286 Int (length/-134980193 var1050)) ; Statement: $i5 = virtualinvoke $r54.<java.lang.String: int length()>() 
(define-const var1321 Int (- var1286 1)) ; Statement: $i6 = $i5 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var1050) var1321) (>= var1321 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {level/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], int), sexpr/-1662368780=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$SexprContext), DECORATOR/-1804204285=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), QID/241515671=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], com.github.jknack.handlebars.internal.antlr.tree.TerminalNode), var1403_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), var1838_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), qualifier/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], java.util.LinkedList), addLast/1864600108=([java.util.LinkedList, java.lang.Object], void), cast-from-String-to-var355=([java.lang.String], java.lang.Object), nameEnd/626416749=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.Token), hasTag/-2046867243=([com.github.jknack.handlebars.internal.TemplateBuilder, boolean], void), var250-init=([], com.github.jknack.handlebars.internal.Block), handlebars/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.Handlebars), param/1375516446=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), params/-1187292865=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.List), hash/1258247777=([com.github.jknack.handlebars.internal.HbsParser$SexprContext], java.util.List), hash/-459617955=([com.github.jknack.handlebars.internal.TemplateBuilder, java.util.List], java.util.Map), blockParams/111942164=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext), blockParams/-1449160185=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext], java.util.List), <init>/-1008510175=([com.github.jknack.handlebars.internal.Block, com.github.jknack.handlebars.Handlebars, java.lang.String, boolean, java.lang.String, java.util.List, java.util.Map, java.util.List], void), paramSize/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], int), cast-from-var250-to-var3566=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.HelperResolver), source/564043682=([com.github.jknack.handlebars.internal.TemplateBuilder], com.github.jknack.handlebars.io.TemplateSource), var2019_filename/-833487352=([com.github.jknack.handlebars.io.TemplateSource], java.lang.String), filename/-762062287=([com.github.jknack.handlebars.internal.BaseTemplate, java.lang.String], com.github.jknack.handlebars.internal.BaseTemplate), cast-from-var250-to-var2078=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.internal.BaseTemplate), var1838_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var1838_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), position/1553523794=([com.github.jknack.handlebars.internal.BaseTemplate, int, int], com.github.jknack.handlebars.internal.BaseTemplate), start/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var2617-to-var2669=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), stop/1874176084=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.Token), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startDelimiter/-2121265389=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), endDelimiter/1877473676=([com.github.jknack.handlebars.internal.Block, java.lang.String], com.github.jknack.handlebars.internal.Block), thenBody/626416749=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], com.github.jknack.handlebars.internal.HbsParser$BodyContext), visitBody/348329788=([com.github.jknack.handlebars.internal.TemplateBuilder, com.github.jknack.handlebars.internal.HbsParser$BodyContext], com.github.jknack.handlebars.Template), elseBlock/-228779620=([com.github.jknack.handlebars.internal.HbsParser$BlockContext], java.util.List), var1044_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), removeLast/1195514639=([java.util.LinkedList], java.lang.Object)}
; {var648=com.github.jknack.handlebars.internal.TemplateBuilder, var1621=r0, var2617=com.github.jknack.handlebars.internal.HbsParser$BlockContext, var2609=r1, var755=$i0, var65=$i1, var3264=com.github.jknack.handlebars.internal.HbsParser$SexprContext, var2647=r2, var1403=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var2952=$r3, var285=$z6, var3812=z0, var3134=$r4, var1838=com.github.jknack.handlebars.internal.antlr.Token, var2344=$r70, var2574=$r71, var2066=java.util.LinkedList, var2410=$r5, var355=java.lang.Object, var671=$r6, var1984=$r72, var955=$z1, var1993=1, var250=com.github.jknack.handlebars.internal.Block, var3810=$r7, var1531=com.github.jknack.handlebars.Handlebars, var3638=$r8, var1044=java.util.List, var2824=$r9, var3360=$r14, var2405=$r10, var2191=java.util.Map, var335=$r13, var3174=com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext, var3281=$r11, var1087=$r12, var1934=0, var2583="#", var3902=r73, var3566=com.github.jknack.handlebars.internal.HelperResolver, var1032=$i2, var2019=com.github.jknack.handlebars.io.TemplateSource, var2125=$r15, var1743=$r16, var2078=com.github.jknack.handlebars.internal.BaseTemplate, var418=$i4, var1301=$i3, var2669=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var3484=$r17, var1050=$r54, var14=$r18, var3696=$r55, var1286=$i5, var1321=$i6, var1641=$r56, var3755=com.github.jknack.handlebars.internal.HbsParser$BodyContext, var3850=$r19, var19=com.github.jknack.handlebars.Template, var2221=$r57, var1557=r74, var3922=$r20, var629=$r48, var718=$z8, var1346=$r21, var3788=$i7, var1875=$i8, var3150=$i9}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var648, r0=var1621, com.github.jknack.handlebars.internal.HbsParser$BlockContext=var2617, r1=var2609, $i0=var755, $i1=var65, com.github.jknack.handlebars.internal.HbsParser$SexprContext=var3264, r2=var2647, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var1403, $r3=var2952, $z6=var285, z0=var3812, $r4=var3134, com.github.jknack.handlebars.internal.antlr.Token=var1838, $r70=var2344, $r71=var2574, java.util.LinkedList=var2066, $r5=var2410, java.lang.Object=var355, $r6=var671, $r72=var1984, $z1=var955, 1=var1993, com.github.jknack.handlebars.internal.Block=var250, $r7=var3810, com.github.jknack.handlebars.Handlebars=var1531, $r8=var3638, java.util.List=var1044, $r9=var2824, $r14=var3360, $r10=var2405, java.util.Map=var2191, $r13=var335, com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext=var3174, $r11=var3281, $r12=var1087, 0=var1934, "#"=var2583, r73=var3902, com.github.jknack.handlebars.internal.HelperResolver=var3566, $i2=var1032, com.github.jknack.handlebars.io.TemplateSource=var2019, $r15=var2125, $r16=var1743, com.github.jknack.handlebars.internal.BaseTemplate=var2078, $i4=var418, $i3=var1301, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var2669, $r17=var3484, $r54=var1050, $r18=var14, $r55=var3696, $i5=var1286, $i6=var1321, $r56=var1641, com.github.jknack.handlebars.internal.HbsParser$BodyContext=var3755, $r19=var3850, com.github.jknack.handlebars.Template=var19, $r57=var2221, r74=var1557, $r20=var3922, $r48=var629, $z8=var718, $r21=var1346, $i7=var3788, $i8=var1875, $i9=var3150}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r1 := @parameter0: com.github.jknack.handlebars.internal.HbsParser$BlockContext;	$i0 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i1 = $i0 + 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i1;	r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$SexprContext sexpr()>();	$r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode DECORATOR()>();	if $r3 == null goto $z6 = 0;	$z6 = 0;	z0 = $z6;	$r4 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode QID()>();	$r70 = interfaceinvoke $r4.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	$r71 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r5 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r5.<java.util.LinkedList: void addLast(java.lang.Object)>($r71);	$r6 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token nameEnd>;	$r72 = interfaceinvoke $r6.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$z1 = virtualinvoke $r71.<java.lang.String: boolean equals(java.lang.Object)>($r72);	if $z1 != 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	if z0 == 0 goto $r7 = new com.github.jknack.handlebars.internal.Block;	$r7 = new com.github.jknack.handlebars.internal.Block;	$r8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Handlebars handlebars>;	$r9 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List param()>();	$r14 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List params(java.util.List)>($r9);	$r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.HbsParser$SexprContext: java.util.List hash()>();	$r13 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.Map hash(java.util.List)>($r10);	$r11 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext blockParams()>();	$r12 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.List blockParams(com.github.jknack.handlebars.internal.HbsParser$BlockParamsContext)>($r11);	specialinvoke $r7.<com.github.jknack.handlebars.internal.Block: void <init>(com.github.jknack.handlebars.Handlebars,java.lang.String,boolean,java.lang.String,java.util.List,java.util.Map,java.util.List)>($r8, $r71, 0, "#", $r14, $r13, $r12);	r73 = $r7;	$i2 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i2 <= 0 goto $r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r15 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.io.TemplateSource source>;	$r16 = interfaceinvoke $r15.<com.github.jknack.handlebars.io.TemplateSource: java.lang.String filename()>();	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate filename(java.lang.String)>($r16);	$i4 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$i3 = interfaceinvoke $r70.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.BaseTemplate position(int,int)>($i4, $i3);	$r17 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token start>;	$r54 = interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r18 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.antlr.Token stop>;	$r55 = interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$i5 = virtualinvoke $r54.<java.lang.String: int length()>();	$i6 = $i5 - 1;	$r56 = virtualinvoke $r54.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block startDelimiter(java.lang.String)>($r56);	virtualinvoke r73.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.internal.Block endDelimiter(java.lang.String)>($r55);	$r19 = r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: com.github.jknack.handlebars.internal.HbsParser$BodyContext thenBody>;	$r57 = virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: com.github.jknack.handlebars.Template visitBody(com.github.jknack.handlebars.internal.HbsParser$BodyContext)>($r19);	if $r57 == null goto r74 = r73;	r74 = r73;	$r20 = virtualinvoke r1.<com.github.jknack.handlebars.internal.HbsParser$BlockContext: java.util.List elseBlock()>();	$r48 = interfaceinvoke $r20.<java.util.List: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r48.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	virtualinvoke r0.<com.github.jknack.handlebars.internal.TemplateBuilder: void hasTag(boolean)>(1);	$r21 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: java.util.LinkedList qualifier>;	virtualinvoke $r21.<java.util.LinkedList: java.lang.Object removeLast()>();	$i7 = r73.<com.github.jknack.handlebars.internal.Block: int paramSize>;	if $i7 <= 0 goto $i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i8 = r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level>;	$i9 = $i8 - 1;	r0.<com.github.jknack.handlebars.internal.TemplateBuilder: int level> = $i9;	return r73
;block_num 11